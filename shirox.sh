epep=com.dts.freefireth
epepmax=com.dts.freefiremax
EXPIRED=202408013
DATE=$(date +'%Y%m%d')
reso=1440x3200
printf() {
  text="$1"
  i=0
  while [ $i -lt ${#text} ]; do
    echo -en "${text:$i:1}"
    sleep 0.02
    i=$((i + 1))
  done
  echo
}
if [ "$DATE" -ge "$EXPIRED" ]; then
echo
echo █▀ █░█ █ █▀█ █▀█ ▄▄ ▀▄▀
echo ▄█ █▀█ █ █▀▄ █▄█ ░░ █░█
echo
echo █▀ █▀▀ █▄░█ █▀ █
echo ▄█ ██▄ █░▀█ ▄█ █
echo
echo -e "\033[38;2;255;165;0m× SHIROX SENSI FREE FIRE ×\033[0m"
sleep 0.5
echo
sleep 2.0
printf "Checking Expired..."
sleep 4.0
echo
printf "Maaf Script Telah Expired!!"
echo Silahkan Update Script Ke Versi Terbaru!!
else
echo
echo █▀ █░█ █ █▀█ █▀█ ▄▄ ▀▄▀
echo ▄█ █▀█ █ █▀▄ █▄█ ░░ █░█
echo
echo █▀ █▀▀ █▄░█ █▀ █
echo ▄█ ██▄ █░▀█ ▄█ █
sleep 0.5
echo
echo -e "\033[38;2;255;165;0m× SHIROX SENSI FREE FIRE ×\033[0m"
sleep 0.5
echo
sleep 2.0
printf "Checking Expired..."
sleep 4.0
echo
printf "[ Modder ]"
printf "> T.me/imkangshiro"
sleep 0.5
printf "[ Source ]"
printf "> T.me/ShiroTeam"
sleep 0.5
printf "[ Version ]"
printf "> Public 2.0"
sleep 0.5
printf "[ Catatan ]"
printf "> Copot Module Setiap Selesai Main"
printf "> Agar Tidak Merusak Device Kalian"
sleep 1.0
echo
printf "[ Procces Applying Regedit ]"
sleep 1.0
printf "- Super Sensitivity✓"
sleep 0.5
printf "- Performance Compile✓"
sleep 0.5
cmd package compile -m speed --secondary-dex -f com.dts.freefireth> /dev/null 2>&1
cmd package compile -m speed --secondary-dex -f com.dts.freefiremax> /dev/null 2>&1
cmd package compile -m quicken -f com.dts.freefireth> /dev/null 2>&1
cmd package compile -m quicken -f com.dts.freefiremax> /dev/null 2>&1
dumpsys deviceidle whitelist +com.dts.freefireth> /dev/null 2>&1
dumpsys deviceidle whitelist +com.dts.freefiremax> /dev/null 2>&1
appops set com.dts.freefireth RUN_IN_BACKGROUND allow> /dev/null 2>&1
appops set com.dts.freefiremax RUN_IN_BACKGROUND allow> /dev/null 2>&1
cmd package compile -m everything-profile -f com.dts.freefireth> /dev/null 2>&1
cmd package compile -m everything-profile -f com.dts.freefiremax> /dev/null 2>&1
pm log-visibility --disable com.dts.freefireth> /dev/null 2>&1
pm log-visibility --disable com.dts.freefiremax> /dev/null 2>&1
sleep 0.5
printf "- Aim Tracking 2.0✓"
reduce_shake() {
x1=$(expr $RANDOM % 1000 + 1)
y1=$(expr $RANDOM % 1000 + 1)
x2=$(expr $RANDOM % 1000 + 1)
y2=$(expr $RANDOM % 1000 + 1)
duration=$(expr $RANDOM % 1000 + 500)
swipe_command="input swipe $x1 $y1 $x2 $y2 $duration -1"
$swipe_command
}
aim_tracking_opt() {
  local coordinate=$1
  if [ $coordinate -lt 0 ]; then
    coordinate=0
  elif [ $coordinate -gt 1000 ]; then 
    coordinate=1000
  fi
  echo $coordinate
}
sensi_calibrar() {
  local x=$(expr $RANDOM % 1000 + 1)
  local y=$(expr $RANDOM % 1000 + 1)
  local duration=$(expr $RANDOM % 1000 + 500)

  reduce_shake swipe $(aim_tracking_opt $x) $(aim_tracking_opt $y) 2000 2000 $duration
  reduce_shake swipe $(aim_tracking_opt $x) $(aim_tracking_opt $y) 2000 0 $duration
  reduce_shake swipe $(aim_tracking_opt $x) $(aim_tracking_opt $y) 0 2000 $duration 
  reduce_shake swipe $(aim_tracking_opt $x) $(aim_tracking_opt $y) 0 0 $duration

  reduce_shake swipe $(aim_tracking_opt $x) $(aim_tracking_opt $y) 2000 2000 $duration
  reduce_shake swipe $(aim_tracking_opt $x) $(aim_tracking_opt $y) 0 2000 $duration
}
reduce_shake
sensi_calibrar
sleep 0.5
printf "- High Responsible Touch✓"
{
settings put global touch.pressure.scale 0.001
settings put system touch.pressure.scale 0.001
settings put global windowsmgr.max_events_per_sec 180
settings put system windowsmgr.max_events_per_sec 180
settings put secure long_press_timeout 90
settings put secure multi_press_timeout 90
settings put system touch.scroll.calibration physical
settings put system touch.surface_flinger.calibration physical
settings put system touch.input_flinger.calibration physical
settings put system view.scroll_friction 10
settings put system pointer_speed 7
settings put global window_animation_scale 0
settings put global transition_animation_scale 0
settings put global animator_duration_scale 0
setprop debug.sf.latch_unsignaled 0
setprop debug.sf.disable_backpressure 1
setprop debug.hwui.disabledither false
setprop debug.sf.hw 1
setprop debug.sf.enable_hgl 1
setprop debug.sf.ddms 1
setprop debug.disable.hwacc 0
setprop debug.disable_sched_boost true
setprop debug.rs.default-CPU-driver 1
setprop debug.rs.default-GPU-driver 1
setprop debug.hwc.compose_level 0
setprop debug.hwui.render_dirty_regions false
setprop debug.mdlogger.Running 0
setprop debug.hwc.bq_count 3
setprop debug.lldb-rpc-server 0
setprop debug.choreographer.skipwarning 16
setprop debug.choreographer.callback 120
setprop debug.hwui.disable_draw_defer true
setprop debug.hwui.enable_partial_updates true
setprop debug.multicore.processing 1
setprop debug.hwui.disable_draw_reorder true
setprop debug.hwui.skip_empty_damage true
setprop debug.perfhudes 1
setprop debug.sf.enable_hgl 1
setprop debug.sf.showupdates 0
setprop debug.sf.showbackground 0
setprop debug.sf.showfps 0
setprop debug.dev.ssrm.turbo true
setprop debug.dev.disable_sched_boost true
setprop debug.rs.default-CPU-buffer 262144
setprop debug.fw.bservice_enable 1
setprop debug.enabletr true
setprop debug.overlayui.enable 1
setprop debug.atrace.app_number 1
setprop debug.assert 1
setprop debug.sf.showcpu 0
setprop debug.kill_allocating_task 1
setprop debug.hwui.fps_divisor 0
setprop debug.cpurend.vsync false
setprop debug.gpurend.vsync true
settings put secure thermal_temp_state_vaule 0
}> /dev/null 2>&1
sleep 0.5
printf "- Optimize Free Fire✓"
{
cmd game mode performance ${epep}
cmd game mode performance ${epepmax}
appops set ${epep} RUN_IN_BACKGROUND allow
appops set ${epepmax} RUN_IN_BACKGROUND allow
cmd package compile -m speed --secondary-dex -f ${epep}
cmd package compile -m speed --secondary-dex -f ${epepmax}
cmd appops set com.google.android.gms RUN_IN_BACKGROUND ignore
cmd appops set com.google.android.gms RUN_ANY_IN_BACKGROUND ignore
cmd appops set com.google.android.gms START_FOREGROUND ignore
cmd appops set com.google.android.gms INSTANT_APP_START_FOREGROUND ignore
cmd appops set com.google.android.ims RUN_IN_BACKGROUND ignore
cmd appops set com.google.android.ims RUN_ANY_IN_BACKGROUND ignore
cmd appops set com.google.android.ims START_FOREGROUND ignore
cmd appops set com.google.android.ims INSTANT_APP_START_FOREGROUND ignore
cmd power set-adaptive-power-saver-enabled false
cmd power set-mode 0
dumpsys deviceidle whitelist +com.android.systemui
dumpsys power set_sampling_rate 0
cmd activity kill-all
am kill-all
rm -f /storage/emulated/0/Pictures/.thumbnails/*
rm -f /storage/emulated/0/Movies/.thumbnails/*
rm -f /data/local/traces/*
rm -r /sdcard/Android/data/com.dts.freefireth/cache/*> /dev/null 2>&1
rm -r /sdcard/Android/data/com.dts.freefiremax/cache/*> /dev/null 2>&1
rm -r /sdcard/Android/data/com.dts.freefireth/cache/*> /dev/null 2>&1
rm -r /sdcard/Android/data/com.dts.freefireth/files/il2cpp/*> /dev/null 2>&1
rm -r /sdcard/Android/data/com.dts.freefiremax/files/il2cpp/*> /dev/null 2>&1
rm -f /data/local/traces/*> /dev/null 2>&1
rm -f /sdcard/Android/data/com.dts.freefireth/files/ffrtc_log.txt*> /dev/null 2>&1
rm -f /sdcard/Android/data/com.dts.freefireth/files/ffrtc_log_bak.txt*> /dev/null 2>&1
rm -f /sdcard/Android/data/com.dts.freefiremax/files/ffrtc_log.txt*> /dev/null 2>&1
rm -f /sdcard/Android/data/com.dts.freefiremax/files/ffrtc_log_bak.txt*> /dev/null 2>&1
}> /dev/null 2>&1
echo
printf "[ Script Activated ]"
echo
sleep 1.0
printf "Open Free Fire.."
sleep 2.0
package_th=$(pm list packages | grep com.dts.freefireth)
package_max=$(pm list packages | grep com.dts.freefiremax)
if [ -n "$package_th" ] && [ -n "$package_max" ]; then
am start -n com.dts.freefireth/com.dts.freefireth.FFMainActivity> /dev/null 2>&1
wm size $reso
elif [ -n "$package_th" ]; then
am start -n com.dts.freefireth/com.dts.freefireth.FFMainActivity> /dev/null 2>&1
wm size $reso
elif [ -n "$package_max" ]; then
am start -n com.dts.freefiremax/com.dts.freefireth.FFMainActivity> /dev/null 2>&1
wm size $reso
else
svc wifi enable
cmd connectivity airplane-mode disable
svc data enable
printf "Silahkan install Free Fire terlebih dahulu."
exit 1
fi
fi



