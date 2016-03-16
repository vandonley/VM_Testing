REM Set variables for file locations.

SET vagrant_folder="C:\Users\Public\.vagrant.d"
SET vbox_folder="C:\Users\Public\.VirtualBox"
SET vm_folder="C:\Users\Public\VirtualBox VMs\"

REM Install Packages

CHOCO install -y virtualbox
CHOCO install -y virtualbox.extensionpack
CHOCO install -y vagrant

REM Set environment variable so that packages and VM's
REM shared to all users on a computer. Create folders if needed.

IF NOT EXIST %vagrant_folder% MKDIR %vagrant_folder%
SET VAGRANT_HOME = %vagrant_folder%

IF NOT EXIST %vbox_folder% MKDIR %vbox_folder%
SET VBOX_USER_HOME = %vbox_folder%

REM VBOXMANAGE will set the location of the VM files.

IF NOT EXIST %vm_folder% MKDIR %vm_folder%
"%VBOX_MSI_INSTALL_PATH%VBOXMANAGE.EXE" setproperty machinefolder %vm_folder%


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