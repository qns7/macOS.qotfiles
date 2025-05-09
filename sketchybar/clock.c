// #include <CoreFoundation/CoreFoundation.h>
// #include <time.h>
// #include <stdio.h>
// #include <stdlib.h>

// int main() {
//     time_t current_time;
//     time(&current_time);

//     char buffer[64];
//     const char* format = "%H:%M:%S";
//     strftime(buffer, sizeof(buffer), format, localtime(&current_time));

//     // Output the time string
//     printf("%s\n", buffer);

//     return 0;
// }


// #include <CoreFoundation/CoreFoundation.h>
// #include <time.h>
// #include <stdio.h>
// #include <stdlib.h>

// void sketchybar(const char *msg) {
//     char command[256];
//     snprintf(command, sizeof(command), "sketchybar %s", msg);
//     system(command);
// }

// void callback(CFRunLoopTimerRef timer, void* info) {
//     time_t current_time;
//     time(&current_time);

//     struct tm *time_info = localtime(&current_time);

//     // Format the date as dd.mm.yy
//     char buffer[64];
//     const char* format = "%d.%m.%y";
//     strftime(buffer, sizeof(buffer), format, time_info);

//     // Get the day of the week (1 = Monday, 7 = Sunday)
//     int weekday = (time_info->tm_wday == 0) ? 7 : time_info->tm_wday; // Convert Sunday (0) to 7

//     // Now append the weekday to the buffer
//     char message[128];
//     snprintf(message, sizeof(message), "--set date icon=\"%s:%d\"", buffer, weekday);

//     // Send the message to SketchyBar
//     sketchybar(message);
// }

// int main() {
//     // Add the item to SketchyBar once
//     // sketchybar("--add item time right");

//     // Create a CFRunLoop timer that fires every 1.0 second, starting now
//     CFRunLoopTimerRef timer = CFRunLoopTimerCreate(
//         kCFAllocatorDefault,
//         (CFAbsoluteTimeGetCurrent() + 1.0),
//         1.0,
//         0, 0,
//         callback,
//         NULL
//     );

//     CFRunLoopAddTimer(CFRunLoopGetMain(), timer, kCFRunLoopDefaultMode);
//     CFRunLoopRun();
//     return 0;
// }


// #include <CoreFoundation/CoreFoundation.h>
// #include <time.h>
// #include <stdio.h>
// #include <stdlib.h>

// void sketchybar(const char *msg) {
//     char command[256];
//     snprintf(command, sizeof(command), "sketchybar %s", msg);
//     system(command);
// }

// void callback(CFRunLoopTimerRef timer, void* info) {
//     time_t current_time;
//     time(&current_time);

//     char time_buffer[64];
//     const char* time_format = "%H:%M:%S";
//     strftime(time_buffer, sizeof(time_buffer), time_format, localtime(&current_time));

//     // Format date and weekday: day.month.year:weekday
//     char date_buffer[64];
//     const char* date_format = "%d.%m.%y";
//     const char* weekday_format = ":%u";  // %u returns the weekday as a number (1 = Monday, 7 = Sunday)
//     strftime(date_buffer, sizeof(date_buffer), date_format, localtime(&current_time));

//     char message[128];
//     snprintf(message, sizeof(message), "--set date icon=\"%s%s\"", date_buffer, weekday_format);

//     sketchybar(message);
// }

// int main() {
//     // Add the item to SketchyBar once
//     // sketchybar("--add item time right");

//     // Create a CFRunLoop timer that fires every 1.0 second, starting now
//     CFRunLoopTimerRef timer = CFRunLoopTimerCreate(
//         kCFAllocatorDefault,
//         (CFAbsoluteTimeGetCurrent() + 1.0),
//         1.0,
//         0, 0,
//         callback,
//         NULL
//     );

//     CFRunLoopAddTimer(CFRunLoopGetMain(), timer, kCFRunLoopDefaultMode);
//     CFRunLoopRun();
//     return 0;
// }



#include <CoreFoundation/CoreFoundation.h>
#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

void sketchybar(const char *msg) {
    char command[256];
    snprintf(command, sizeof(command), "sketchybar %s", msg);
    system(command);
}

void update_time() {
    struct timespec ts;
    clock_gettime(CLOCK_REALTIME, &ts);

    char buffer[64];
    const char* format = "%H:%M:%S";
    struct tm *tm_info = localtime(&ts.tv_sec);
    strftime(buffer, sizeof(buffer), format, tm_info);
    
    char message[128];
    snprintf(message, sizeof(message), "--set date icon=\"%s\"", buffer);
    sketchybar(message);
}

void sync_callback(CFRunLoopTimerRef timer, void* info) {
    static time_t last_sec = 0;
    struct timespec ts;
    clock_gettime(CLOCK_REALTIME, &ts);
    
    if (last_sec == 0)
        last_sec = ts.tv_sec;
    
        if (ts.tv_sec != last_sec && ts.tv_nsec < 50 * 1000000) {
        update_time();
        
        CFRunLoopTimerRef second_timer = CFRunLoopTimerCreate(
            kCFAllocatorDefault,
            CFAbsoluteTimeGetCurrent() + 1.0,
            1.0,
            0, 0,
            (CFRunLoopTimerCallBack)update_time,
            NULL
        );
        CFRunLoopAddTimer(CFRunLoopGetMain(), second_timer, kCFRunLoopDefaultMode);
        
        CFRunLoopTimerInvalidate(timer);
        CFRelease(timer);
    }
}

int main() {
    update_time();

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



// #include <CoreFoundation/CoreFoundation.h>
// #include <time.h>
// #include <stdio.h>
// #include <stdlib.h>

// void sketchybar(const char *msg) {
//     char command[256];
//     snprintf(command, sizeof(command), "sketchybar %s", msg);
//     system(command);
// }

// void callback(CFRunLoopTimerRef timer, void* info) {
//     time_t current_time;
//     time(&current_time);

//     char buffer[64];
//     const char* format = "%H:%M:%S";
//     strftime(buffer, sizeof(buffer), format, localtime(&current_time));

//     char message[128];
//     snprintf(message, sizeof(message), "--set date icon=\"%s\"", buffer);

//     sketchybar(message);
// }

// int main() {
//     // Add the item to SketchyBar once
//     // sketchybar("--add item time right");

//     // Create a CFRunLoop timer that fires every 1.0 second, starting now
//     CFRunLoopTimerRef timer = CFRunLoopTimerCreate(
//         kCFAllocatorDefault,
//         (CFAbsoluteTimeGetCurrent() + 1.0),
//         1.0,
//         0, 0,
//         callback,
//         NULL
//     );

//     CFRunLoopAddTimer(CFRunLoopGetMain(), timer, kCFRunLoopDefaultMode);
//     CFRunLoopRun();
//     return 0;
// }


// #include <CoreFoundation/CoreFoundation.h>
// #include <time.h>
// #include <stdio.h>
// #include <stdlib.h>

// void sketchybar(const char *msg) {
//     char command[256];
//     snprintf(command, sizeof(command), "sketchybar %s", msg);
//     system(command);
// }

// void callback(CFRunLoopTimerRef timer, void* info) {
//     time_t current_time;
//     time(&current_time);

//     // Buffer for the formatted time string (hours:minutes:seconds)
//     char time_buffer[64];
//     const char* time_format = "%H:%M:%S";
//     strftime(time_buffer, sizeof(time_buffer), time_format, localtime(&current_time));

//     // Buffer for the weekday (1-7) part, which is the format you want as %u
//     char weekday_buffer[64];
//     const char* weekday_format = ":%u";  // %u returns weekday as a number (1=Monday, ..., 7=Sunday)
//     strftime(weekday_buffer, sizeof(weekday_buffer), weekday_format, localtime(&current_time));

//     // Combine both into the final message
//     char message[128];
//     snprintf(message, sizeof(message), "--set date icon=\"$(date +'%s%s')\"", time_buffer, weekday_buffer);

//     // Send the message to SketchyBar
//     sketchybar(message);
// }

// int main() {
//     // Create a CFRunLoop timer that fires every 1.0 second, starting now
//     CFRunLoopTimerRef timer = CFRunLoopTimerCreate(
//         kCFAllocatorDefault,
//         (CFAbsoluteTimeGetCurrent() + 1.0),
//         1.0,
//         0, 0,
//         callback,
//         NULL
//     );

//     CFRunLoopAddTimer(CFRunLoopGetMain(), timer, kCFRunLoopDefaultMode);
//     CFRunLoopRun();
//     return 0;
// }
