# launch-all-browsers
This is a collection of scripts to open a link on all installed browsers on multiple OS's.

## Windows 10
[LaunchAllBrowsers.bat](https://github.com/DallasO/launch-all-browsers/blob/master/LaunchAllBrowsers.bat)

### Currently supports
1. Chrome
2. Chrome Beta
3. Firefox
4. Internet Explorer
5. Edge

### How to use
Save the .bat file and double-click to run  
Right click to paste a link  
Hit enter to begin opening all browsers  
Leave blank to close  


## Linux
[LaunchAllBrowsers.sh](https://github.com/DallasO/launch-all-browsers/blob/master/LaunchAllBrowsers.sh)

### Currently supports
Tested on Debian
1. Chrome
2. Firefox

### How to use
1. Make sure this script is executable  

    `$ chmod u+x LaunchAllBrowsers.sh`


2. Add to your PATH  

     Either by editing your ~/.profile or ~/.bashrc file:  

    `export PATH="$PATH:/path/to/launch-all-browsers"`

    OR

    Adding a symlink:

    ```
    $ cd /usr/local/bin
    $ sudo ln -s /path/to/launch-all-browsers/LaunchAllBrowsers.sh launch-all-browsers
    ```
