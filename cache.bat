@echo off
title FiveM Cache I Koma#0001
color b

echo .
echo Druecke eine beliebige Taste um dein FiveM Cache zu leeren!
pause >nul
cls



echo Leere FiveM Cache!!!
TIMEOUT /T 1
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\browser"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\db"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\priv"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\servers"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\subprocess"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\unconfirmed"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\crashometry"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\launcher_skip_mtl2"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\session"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\plugins"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\mods"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\logs"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\crashes"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\caches.XML"
del /s /q /f "%LocalAppData%\FiveM\FiveM.app\adhesive.dll"

taskkill /f /im GTAVLauncher.exe
wmic process where name="FiveM.exe" CALL setpriority 128
wmic process where name="FiveM_b2189_GTAProcess.exe" CALL setpriority 128
taskkill /f /im TeamWiever_Service.exe
taskkill /f /im java.exed


color b
cls
echo FiveM Cache geleert!
