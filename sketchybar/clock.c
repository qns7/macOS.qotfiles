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

// COMPILE: clang -std=c99 -framework CoreFoundation clock.c -o clock
