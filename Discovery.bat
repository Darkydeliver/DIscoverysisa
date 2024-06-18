@echo off
echo Account Discovery
echo ==================
whoami
set
net user
net localgroup
wmic useraccount list full
wmic group list full


echo.
echo Processes and Services
echo ======================
tasklist
wmic process list full


echo.
echo Service Discovery
echo ==================
sc query
tasklist /svc
net start
wmic service list full


echo.
echo Security Software and Controls
echo ==============================
netsh advfirewall show allprofiles


echo.
echo Network Enumeration
echo ===================
ipconfig /all
ipconfig /displaydns
netstat -na
arp -a
net session


echo.
echo Scheduled Tasks
echo ===============
schtasks /query /fo LIST /v


echo.
echo Installed Software
echo ==================
wmic product get name,version


echo.
echo Environment Variables
echo =====================
set


echo.
echo System Information
echo ===================
systeminfo


echo.
echo Network Shares
echo ===============
net share


echo Script execution completed.
pause
