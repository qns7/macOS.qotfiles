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

//     char buffer[64];
//     const char* format = "%H:%M:%S";
//     strftime(buffer, sizeof(buffer), format, localtime(&current_time));

//     char message[128];
//     snprintf(message, sizeof(message), "--set time label=\"%s\"", buffer);

//     sketchybar(message);
// }

// int main() {
//     // Add the item to SketchyBar once
//     sketchybar("--add item time right");

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
