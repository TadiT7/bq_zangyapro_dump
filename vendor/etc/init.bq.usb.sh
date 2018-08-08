build_type=`getprop ro.build.type`
# This check is important for boot userdebug + system user
fingerprint=`getprop ro.bootimage.build.fingerprint`

androidbootmode=`getprop ro.bootmode`

#if [ -f /cache/bq_reset ] || [ "$build_type" == "userdebug" ] || [[ $fingerprint == *"userdebug"* ]] || [ "$build_type" == "eng" ]; then
if [ -f /cache/bq_reset ] || [ "$build_type" == "userdebug" ] || [[ $fingerprint == *"userdebug"* ]] || [ "$build_type" == "eng" ]; then
    setprop persist.sys.usb.config diag,serial_cdev,rmnet,adb
    setprop sys.usb.config diag,serial_cdev,rmnet,adb
    setprop persist.service.adb.secure 0
fi
