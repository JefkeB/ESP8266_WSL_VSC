PATH=%CD%\Tools_Win;%PATH%
set wsl_project_folder_root=/mnt/d/ESP8266_Projects
set wsl_project_folder_drive=/mnt/d
set wsl_espport=/dev/ttyS7
set wsl_remoteupdate_ip=192.168.2.31
start "" "%CD%\VSC\Code.exe" --extensionHomePath=%CD%\VSC_port\Extensions --user-data-dir=%CD%\VSC_port\data 	