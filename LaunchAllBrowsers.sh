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
#     $ cd /usr/local/bin
#     $ sudo ln -s /path/to/launch-all-browsers/LaunchAllBrowsers.sh launch-all-browsers
#
# ****************************************************************************************************
set -u

# Make sure URL was passed
if [ "$1" != "" ]; then

  # Detect OS
  uname=$(uname);
  case "$uname" in
      (*Linux*) openCmd='xdg-open'; ;;
      (*Darwin*) openCmd='open'; ;;
      (*CYGWIN*) openCmd='cygstart'; ;;
      (*) echo 'error: unsupported platform.'; exit 2; ;;
  esac;

  if uname | grep Linux > /dev/null 2>&1; then
    cmdChromium=$( type -p chromium 2>&1 )

    if [ "$cmdChromium" != "" ]; then
        nohup $cmdChromium "$1" > /dev/null 2>&1 &
    fi

    cmdFirefox=$( type -p firefox 2>&1 )

    if [ "$cmdFirefox" != "" ]; then
        nohup $cmdFirefox "$1" > /dev/null 2>&1 &
    fi
  else
    "$openCmd" "$filename.pdf";
  fi

else
  echo "URL missing?"
  exit 1
fi
