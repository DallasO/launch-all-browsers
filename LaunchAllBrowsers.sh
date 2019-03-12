#!/bin/bash
#
# @(#)$Id$
#
#
# Open a link in all of your installed browsers

# ****************************************************************************************************
# $ launch-all-browsers [URL]
#
# ****************************************************************************************************
#
# 1. Make sure this script is executable
#     $ chmod u+x LaunchAllBrowsers.sh
#
# 2. Add to your PATH
#     Either by editing your ~/.profile or ~/.bashrc file:

#     export PATH="$PATH:/path/to/launch-all-browsers"
#
#     OR
#
#     Adding a symlink:
#
#     $ cd /usr/bin
#     $ sudo ln -s /path/to/launch-all-browsers/LaunchAllBrowsers.sh launch-all-browsers
#
# ****************************************************************************************************


# Make sure URL was passed
if [ "$1" != "" ]; then

    cmdChromium=$( type -p chromium 2>&1 )

    if [ "$cmdChromium" != "" ]; then
        nohup $cmdChromium "$1" >/dev/null 2>&1 &
    fi

    cmdFirefox=$( type -p firefox 2>&1 )

    if [ "$cmdFirefox" != "" ]; then
        nohup $cmdFirefox "$1" >/dev/null 2>&1 &
    fi

fi
