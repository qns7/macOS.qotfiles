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
