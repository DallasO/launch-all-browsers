@echo off

:while1
  echo Press Enter to close or Paste URL
  echo.
  set url=
  set /P url="Paste URL (Right Click): "
  IF not "%url%"==""  (

    IF EXIST "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" (
      start "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "%url%"
    )
    IF EXIST "C:\Program Files (x86)\Google\Chrome Beta\Application\chrome.exe" (
      start "" "C:\Program Files (x86)\Google\Chrome Beta\Application\chrome.exe" "%url%"
    )
    IF EXIST "C:\Program Files\Mozilla Firefox\firefox.exe" (
      start "" "C:\Program Files\Mozilla Firefox\firefox.exe" "%url%"
    )
    IF EXIST "C:\Program Files\internet explorer\iexplore.exe" (
      start "" "C:\Program Files\internet explorer\iexplore.exe" "%url%"
    )
    start "" microsoft-edge:"%url%"

    echo.
    echo Done...
    echo.
    echo.
    echo.

    goto :while1
  )
