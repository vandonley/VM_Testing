@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

REM Set variables for file locations in this session.

SET VAGRANT_HOME="C:\Users\Public\.vagrant.d"
SET VBOX_USER_HOME="C:\Users\Public\.VirtualBox"

REM Set persistent system variables.

SETX /m VAGRANT_HOME "C:\Users\Public\.vagrant.d"
SETX /m VBOX_USER_HOME "C:\Users\Public\.VirtualBox"

REM Install VirtualBox
CHOCO install -y virtualbox

EXIT

