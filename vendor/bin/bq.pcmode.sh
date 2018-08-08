#!/vendor/bin/sh

TOUCH_PANEL="$1"
FB_SUSPEND="$2"

echo "Touch panel: $TOUCH_PANEL"
echo "Framebuffer suspend: $FB_SUSPEND"

echo "$TOUCH_PANEL" > /proc/android_touch/SenseOnOff
echo "$FB_SUSPEND" > /sys/class/graphics/fb0/suspend
