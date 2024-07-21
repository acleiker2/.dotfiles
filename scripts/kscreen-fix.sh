#!/bin/bash

# Check if exactly one command line argument is provided
if [ $# -ne 1 ]; then
    echo "Please provide exactly one argument: Garage, Bedroom, or Office"
    exit 1
fi

# Check the selected option and perform the corresponding action
case $1 in
    garage)
        notify-send "Selected option: Garage"
        # Add your Garage specific commands here
        kscreen-doctor output.HDMI-A-1.enable
        kscreen-doctor output.HDMI-A-1.mode.3840x2160@120
        kscreen-doctor output.HDMI-A-1.scale.2
        kscreen-doctor output.DP-1.disable
        kscreen-doctor output.DP-2.disable
        ;;
    bedroom)
        notify-send "Selected option: Bedroom"
        # Add your Bedroom specific commands here
        kscreen-doctor output.DP-2.enable
        kscreen-doctor output.DP-2.mode.3840x2160@120
        kscreen-doctor output.DP-2.scale.2
        kscreen-doctor output.DP-1.disable
        kscreen-doctor output.HDMI-A-1.disable
        ;;
    office)
        notify-send "Selected option: Office"
        # Add your Office specific commands here
        kscreen-doctor output.DP-1.enable
        kscreen-doctor output.DP-1.mode.3840x2160@120
        kscreen-doctor output.DP-1.scale.1
        kscreen-doctor output.HDMI-A-1.disable
        kscreen-doctor output.DP-2.disable
        ;;
    garagegaming)
        notify-send "Selected option: Garage Gaming"
        # Add your Garage Gaming specific commands here
        kscreen-doctor output.HDMI-A-1.enable
        kscreen-doctor output.HDMI-A-1.mode.3840x2160@120
        kscreen-doctor output.HDMI-A-1.scale.1
        kscreen-doctor output.DP-1.disable
        kscreen-doctor output.DP-2.disable
        ;;
    enableHDR)
        notify-send "Selected option: Enable HDR"
        # Add your Enable HDR specific commands here
        kscreen-doctor output.HDMI-A-1.hdr.enable \
        output.DP-1.hdr.enable \
        output.DP-2.hdr.enable
        ;;
    disableHDR)
        notify-send "Selected option: Disable HDR"
        # Add your Disable HDR specific commands here
        kscreen-doctor output.HDMI-A-1.hdr.disable \
        output.DP-1.hdr.disable \
        output.DP-2.hdr.disable
        ;;
    *)
        notify-send "Invalid option: $1. Please select either Garage, Bedroom, or Office"
        exit 1
        ;;
esac