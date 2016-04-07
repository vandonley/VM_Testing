REM Set variables for file locations in this session.

SET vm_folder="C:\Users\Public\VirtualBox VMs\"
SET PATH=%PATH%;C:\Program Files\Oracle\VirtualBox;

REM VBOXMANAGE will set the location of the VM files.

IF NOT EXIST %vm_folder% MKDIR %vm_folder%

VBOXMANAGE.EXE setproperty machinefolder %vm_folder%

REM Install Packages

CHOCO install -y virtualbox.extensionpack
CHOCO install -y vagrant

@ECHO OFF
ECHO .
ECHO .
ECHO Open VirtualBox and update if needed.
ECHO .
ECHO Moved default VM folder locations for VirtualBox
ECHO and VAGRANT_HOME so they will be stored
ECHO outside your user profile.
ECHO .
ECHO Most users should leave these as default.
ECHO .
ECHO .
PAUSE
