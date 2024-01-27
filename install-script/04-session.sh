#!/bin/bash

cat << EOF
# ===========================================================================
# STEP 4
# APPLY SESSION CONTROL PREFERENCES
# ===========================================================================
EOF

if [ "$res_autologin" == "y" ]; then
    echo ""  >> /home/$trk/.profile
    echo "#Auto start sway with lockscreen"  >> /home/$trk/.profile
    echo "if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then"  >> /home/$trk/.profile
    echo "    exec sway $"  >> /home/$trk/.profile
    echo "fi"  >> /home/$trk/.profile
    echo ""  >> /home/$trk/.profile

    echo ""  >> /home/$trk/.config/sway/config.d/autostart_applications
    echo "#Auto start sway with lockscreen"  >> /home/$trk/.config/sway/config.d/autostart_applications
    echo "swaylock -f -C ~/.config/swaylock/config" >> /home/$trk/.config/sway/config.d/autostart_applications
fi