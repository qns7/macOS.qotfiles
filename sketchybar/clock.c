// #include "sketchybar.h"
// #include <CoreFoundation/CoreFoundation.h>
// #include <time.h>

// void update_time(CFRunLoopTimerRef timer, void* info) {
//   time_t now;
//   time(&now);

//   const char* format = "%H:%M:%S";
//   char buffer[64];
//   strftime(buffer, sizeof(buffer), format, localtime(&now));

//   char message[128];
//   snprintf(message, sizeof(message), "--set date icon=\"%s\"", buffer);
//   sketchybar(message);
// }

// int main() {
//   sketchybar("--add item date right");

//   CFRunLoopTimerRef timer = CFRunLoopTimerCreate(
//     kCFAllocatorDefault,
//     (int64_t)CFAbsoluteTimeGetCurrent() + 1.0,
//     1.0,
//     0, 0,
//     update_time,
//     NULL
//   );

//   CFRunLoopAddTimer(CFRunLoopGetMain(), timer, kCFRunLoopDefaultMode);
//   CFRunLoopRun();
//   return 0;
// }




// #include "sketchybar.h"
// #include <CoreFoundation/CoreFoundation.h>
// #include <time.h>

// void callback(CFRunLoopTimerRef timer, void* info) {
//   time_t current_time;
//   time(&current_time);

//   const char* format = "%H:%M:%S";
//   char buffer[64];
//   strftime(buffer, sizeof(buffer), format, localtime(&current_time));

//   uint32_t message_size = sizeof(buffer) + 64;
//   char message[message_size];
//   snprintf(message, message_size, "--set date icon=\"%s\"", buffer);
//   sketchybar(message);
// }

// int main() {
//   sketchybar("--add item date right");

//   time_t current_time;
//   time(&current_time);
  
//   double seconds_until_next_second = 1.0 - (current_time % 1);
  
//   CFRunLoopTimerRef timer = CFRunLoopTimerCreate(
//     kCFAllocatorDefault,
//     CFAbsoluteTimeGetCurrent() + seconds_until_next_second,
//     1.0,
//     0, 0,
//     callback,
//     NULL
//   );

//   CFRunLoopAddTimer(CFRunLoopGetMain(), timer, kCFRunLoopDefaultMode);
//   CFRunLoopRun();
//   return 0;
// }




// HYBRID VERSION : syncing of my first version was very good and had no lag like the og. 

#include "sketchybar.h"
#include <CoreFoundation/CoreFoundation.h>
#include <time.h>

void update_time() {
  time_t now;
  time(&now);

  const char* format = "%H:%M:%S";
  char buffer[64];
  strftime(buffer, sizeof(buffer), format, localtime(&now));

  char message[128];
  snprintf(message, sizeof(message), "--set date icon=\"%s\"", buffer);
  sketchybar(message);
}

void start_repeating_timer() {
  CFRunLoopTimerRef timer = CFRunLoopTimerCreate(
    kCFAllocatorDefault,
    CFAbsoluteTimeGetCurrent() + 1.0,
    1.0,
    0, 0,
    (CFRunLoopTimerCallBack)update_time,
    NULL
  );
  CFRunLoopAddTimer(CFRunLoopGetMain(), timer, kCFRunLoopDefaultMode);
}

void sync_callback(CFRunLoopTimerRef timer, void* info) {
  struct timespec ts;
  clock_gettime(CLOCK_REALTIME, &ts);

  if (ts.tv_nsec < 50 * 1000000) {
    update_time();
    start_repeating_timer();

    CFRunLoopTimerInvalidate(timer);
    CFRelease(timer);
  }
}

int main() {
  sketchybar("--add item date right");

  CFRunLoopTimerRef sync_timer = CFRunLoopTimerCreate(
    kCFAllocatorDefault,
    CFAbsoluteTimeGetCurrent() + 0.01,
    0.01,
    0, 0,
    sync_callback,
    NULL
  );
  CFRunLoopAddTimer(CFRunLoopGetMain(), sync_timer, kCFRunLoopDefaultMode);

  CFRunLoopRun();
  return 0;
}

// #include "sketchybar.h"
// #include <CoreFoundation/CoreFoundation.h>
// #include <time.h>
// #include <stdio.h>

// void update_time(CFRunLoopTimerRef timer, void* info) {
//     time_t current_time;
//     time(&current_time);
//     const char* format = "%H:%M:%S";
//     char buffer[64];
//     strftime(buffer, sizeof(buffer), format, localtime(&current_time));

//     char message[128];
//     snprintf(message, sizeof(message), "--set date icon=\"%s\"", buffer);
//     sketchybar(message);
// }

// void sync_callback(CFRunLoopTimerRef timer, void* info) {
//     static time_t last_sec = 0;
//     struct timespec ts;
//     clock_gettime(CLOCK_REALTIME, &ts);

//     if (last_sec == 0)
//         last_sec = ts.tv_sec;

//     if (ts.tv_sec != last_sec && ts.tv_nsec < 50 * 1000000) {
//         update_time(NULL, NULL); // Immediate first update

//         CFRunLoopTimerRef second_timer = CFRunLoopTimerCreate(
//             kCFAllocatorDefault,
//             CFAbsoluteTimeGetCurrent() + 1.0,
//             1.0,
//             0, 0,
//             update_time,
//             NULL
//         );
//         CFRunLoopAddTimer(CFRunLoopGetMain(), second_timer, kCFRunLoopDefaultMode);

//         CFRunLoopTimerInvalidate(timer);
//         CFRelease(timer);
//     }
// }

// int main() {
//     sketchybar("--add item date right");

//     CFRunLoopTimerRef sync_timer = CFRunLoopTimerCreate(
//         kCFAllocatorDefault,
//         CFAbsoluteTimeGetCurrent() + 0.01,
//         0.01,
//         0, 0,
//         sync_callback,
//         NULL
//     );
//     CFRunLoopAddTimer(CFRunLoopGetMain(), sync_timer, kCFRunLoopDefaultMode);

//     CFRunLoopRun();
//     return 0;
// }




// FELIX KRATZ' VERSION

// #include "sketchybar.h"
// #include <CoreFoundation/CoreFoundation.h>
// #include <time.h>

// void callback(CFRunLoopTimerRef timer, void* info) {
//   time_t current_time;
//   time(&current_time);
//   const char* format = "%H:%M:%S";
//   char buffer[64];
//   strftime(buffer, sizeof(buffer), format, localtime(&current_time));

//   uint32_t message_size = sizeof(buffer) + 64;
//   char message[message_size];
//   snprintf(message, message_size, "--set date icon=\"%s\"", buffer);
//   sketchybar(message);
// }

// int main() {
//   CFRunLoopTimerRef timer = CFRunLoopTimerCreate(kCFAllocatorDefault, (int64_t)CFAbsoluteTimeGetCurrent() + 1.0, 1.0, 0, 0, callback, NULL);
//   CFRunLoopAddTimer(CFRunLoopGetMain(), timer, kCFRunLoopDefaultMode);
//   sketchybar("--add item time right");
//   CFRunLoopRun();
//   return 0;
// }




// BAD FIRST VERSION FROM ME & CGPT W/O HEADER ...

// #include <CoreFoundation/CoreFoundation.h>
// #include <time.h>
// #include <stdio.h>
// #include <stdlib.h>
// #include <stdbool.h>

// void sketchybar(const char *msg) {
//     char command[256];
//     snprintf(command, sizeof(command), "sketchybar %s", msg);
//     system(command);
// }

// void update_time() {
//     struct timespec ts;
//     clock_gettime(CLOCK_REALTIME, &ts);

//     char buffer[64];
//     const char* format = "%H:%M:%S";
//     struct tm *tm_info = localtime(&ts.tv_sec);
//     strftime(buffer, sizeof(buffer), format, tm_info);
    
//     char message[128];
//     snprintf(message, sizeof(message), "--set date icon=\"%s\"", buffer);
//     sketchybar(message);
// }

// void sync_callback(CFRunLoopTimerRef timer, void* info) {
//     static time_t last_sec = 0;
//     struct timespec ts;
//     clock_gettime(CLOCK_REALTIME, &ts);
    
//     if (last_sec == 0)
//         last_sec = ts.tv_sec;
    
//         if (ts.tv_sec != last_sec && ts.tv_nsec < 50 * 1000000) {
//         update_time();
        
//         CFRunLoopTimerRef second_timer = CFRunLoopTimerCreate(
//             kCFAllocatorDefault,
//             CFAbsoluteTimeGetCurrent() + 1.0,
//             1.0,
//             0, 0,
//             (CFRunLoopTimerCallBack)update_time,
//             NULL
//         );
//         CFRunLoopAddTimer(CFRunLoopGetMain(), second_timer, kCFRunLoopDefaultMode);
        
//         CFRunLoopTimerInvalidate(timer);
//         CFRelease(timer);
//     }
// }

// int main() {
//     update_time();

//     CFRunLoopTimerRef sync_timer = CFRunLoopTimerCreate(
//         kCFAllocatorDefault,
//         CFAbsoluteTimeGetCurrent() + 0.01,
//         0.01,
//         0, 0,
//         sync_callback,
//         NULL
//     );
//     CFRunLoopAddTimer(CFRunLoopGetMain(), sync_timer, kCFRunLoopDefaultMode);
    
//     CFRunLoopRun();
//     return 0;
// }

// // COMPILE: clang -std=c99 -framework CoreFoundation clock.c -o clock
