#include "sketchybar.h"
#include <CoreFoundation/CoreFoundation.h>
#include <time.h>

void callback(CFRunLoopTimerRef timer, void* info) {
  time_t current_time;
  time(&current_time);
  const char* format = "%H:%M:%S";
  char buffer[64];
  strftime(buffer, sizeof(buffer), format, localtime(&current_time));

  uint32_t message_size = sizeof(buffer) + 64;
  char message[message_size];
  snprintf(message, message_size, "--set date icon=\"%s\"", buffer);
  sketchybar(message);
}

int main() {
  CFRunLoopTimerRef timer = CFRunLoopTimerCreate(kCFAllocatorDefault, (int64_t)CFAbsoluteTimeGetCurrent() + 1.0, 1.0, 0, 0, callback, NULL);
  CFRunLoopAddTimer(CFRunLoopGetMain(), timer, kCFRunLoopDefaultMode);
  // sketchybar("--add date icon right");
  CFRunLoopRun();
  return 0;
}




// #include "sketchybar.h"
// #include <dispatch/dispatch.h>
// #include <time.h>
// #include <string.h>
// #include <stdio.h>

// #define TIME_FORMAT "%H:%M:%S"
// #define TIMER_LEEWAY_NS (50 * 1000000)  // 50ms leeway for battery efficiency

// static char last_time[16] = "";

// void update_time() {
//   time_t now = time(NULL);
//   char buffer[16];
//   strftime(buffer, sizeof(buffer), TIME_FORMAT, localtime(&now));

//   if (strcmp(buffer, last_time) == 0) return; // Skip redundant update
//   strcpy(last_time, buffer);

//   char message[64];
//   snprintf(message, sizeof(message), "--set date icon=\"%s\"", buffer);
//   sketchybar(message);
// }

// int main() {
//   sketchybar("--add item date right");

//   dispatch_queue_t queue = dispatch_get_main_queue();
//   dispatch_source_t timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);

//   dispatch_source_set_timer(
//     timer,
//     dispatch_time(DISPATCH_TIME_NOW, 1 * NSEC_PER_SEC),
//     1 * NSEC_PER_SEC,
//     TIMER_LEEWAY_NS
//   );

//   dispatch_source_set_event_handler(timer, ^{
//     update_time();
//   });

//   dispatch_resume(timer);
//   dispatch_main();
//   return 0;
// }




// // // STILL LAGGY!

// #include "sketchybar.h"
// #include <dispatch/dispatch.h>
// #include <time.h>
// #include <string.h>
// #include <stdio.h>

// #define TIME_FORMAT "%H:%M:%S"
// #define SYNC_THRESHOLD_NS (50 * 1000000)   // 50ms
// #define TIMER_LEEWAY_NS (50 * 1000000)     // 50ms leeway for power savings

// static char last_time[16] = "";

// void update_time() {
//   time_t now = time(NULL);
//   char buffer[16];
//   strftime(buffer, sizeof(buffer), TIME_FORMAT, localtime(&now));

//   if (strcmp(buffer, last_time) == 0) return; // avoid redundant update
//   strcpy(last_time, buffer);

//   char message[64];
//   snprintf(message, sizeof(message), "--set date icon=\"%s\"", buffer);
//   sketchybar(message);
// }

// void start_repeating_timer() {
//   dispatch_queue_t queue = dispatch_get_main_queue();

//   dispatch_source_t timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
//   dispatch_source_set_timer(timer,
//     dispatch_time(DISPATCH_TIME_NOW, 1 * NSEC_PER_SEC),
//     1 * NSEC_PER_SEC,
//     TIMER_LEEWAY_NS // leeway for battery efficiency
//   );

//   dispatch_source_set_event_handler(timer, ^{
//     update_time();
//   });

//   dispatch_resume(timer);
// }

// void sync_and_start() {
//   dispatch_queue_t queue = dispatch_get_main_queue();

//   dispatch_source_t sync_timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
//   dispatch_source_set_timer(sync_timer,
//     dispatch_time(DISPATCH_TIME_NOW, 10 * NSEC_PER_MSEC),
//     10 * NSEC_PER_MSEC,
//     0
//   );

//   dispatch_source_set_event_handler(sync_timer, ^{
//     struct timespec ts;
//     clock_gettime(CLOCK_REALTIME, &ts);

//     if (ts.tv_nsec < SYNC_THRESHOLD_NS) {
//       update_time(); // first aligned update
//       start_repeating_timer();
//       dispatch_source_cancel(sync_timer);
//     }
//   });

//   dispatch_resume(sync_timer);
// }

// int main() {
//   sketchybar("--add item date right");
//   sync_and_start();
//   dispatch_main();
//   return 0;
// }




// // my first

// #include "sketchybar.h"
// #include <CoreFoundation/CoreFoundation.h>
// #include <time.h>

// void update_time() {
//   time_t now;
//   time(&now);

//   const char* format = "%H:%M:%S";
//   char buffer[64];
//   strftime(buffer, sizeof(buffer), format, localtime(&now));

//   char message[128];
//   snprintf(message, sizeof(message), "--set date icon=\"%s\"", buffer);
//   sketchybar(message);
// }

// void start_repeating_timer() {
//   CFRunLoopTimerRef timer = CFRunLoopTimerCreate(
//     kCFAllocatorDefault,
//     CFAbsoluteTimeGetCurrent() + 1.0,
//     1.0,
//     0, 0,
//     (CFRunLoopTimerCallBack)update_time,
//     NULL
//   );
//   CFRunLoopAddTimer(CFRunLoopGetMain(), timer, kCFRunLoopDefaultMode);
// }

// void sync_callback(CFRunLoopTimerRef timer, void* info) {
//   struct timespec ts;
//   clock_gettime(CLOCK_REALTIME, &ts);

//   if (ts.tv_nsec < 50 * 1000000) {
//     update_time();
//     start_repeating_timer();

//     CFRunLoopTimerInvalidate(timer);
//     CFRelease(timer);
//   }
// }

// int main() {
//   sketchybar("--add item date right");

//   CFRunLoopTimerRef sync_timer = CFRunLoopTimerCreate(
//     kCFAllocatorDefault,
//     CFAbsoluteTimeGetCurrent() + 0.01,
//     0.01,
//     0, 0,
//     sync_callback,
//     NULL
//   );
//   CFRunLoopAddTimer(CFRunLoopGetMain(), sync_timer, kCFRunLoopDefaultMode);

//   CFRunLoopRun();
//   return 0;
// }
