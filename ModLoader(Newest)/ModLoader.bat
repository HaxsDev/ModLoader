@echo off
color 0a
set "version=1.0.4"
echo Phasmophobia ModLoader %version%
echo .
echo OPTIONS
echo Enable Mod: 1
echo Disable Mod: 2
echo skip/cancel: 3
echo Phasmophobia.exe Gone: 4
echo Update ModLoader (Manual Work): 5
set /p id=" "
if %id%==1 (
del "C:\Program Files (x86)\Steam\steamapps\common\Phasmophobia\Phasmophobia_Data\Managed\Assembly-CSharp.dll"
copy "C:\Program Files (x86)\Steam\steamapps\common\Phasmophobia\Mods\Assembly-CSharp(modded).dll" "C:\Program Files (x86)\Steam\steamapps\common\Phasmophobia\Phasmophobia_Data\Managed\Assembly-CSharp.dll"
del "C:\Program Files (x86)\Steam\steamapps\common\Phasmophobia\Mods\Backup\Phasmophobia.exe"
copy "C:\Program Files (x86)\Steam\steamapps\common\Phasmophobia\Phasmophobia.exe" "C:\Program Files (x86)\Steam\steamapps\common\Phasmophobia\Mods\Backup\Phasmophobia.exe"
echo success
)
if %id%==2 (
del "C:\Program Files (x86)\Steam\steamapps\common\Phasmophobia\Phasmophobia_Data\Managed\Assembly-CSharp.dll"
copy "C:\Program Files (x86)\Steam\steamapps\common\Phasmophobia\Mods\Assembly-CSharp(original).dll" "C:\Program Files (x86)\Steam\steamapps\common\Phasmophobia\Phasmophobia_Data\Managed\Assembly-CSharp.dll"
del "C:\Program Files (x86)\Steam\steamapps\common\Phasmophobia\Mods\Backup\Phasmophobia.exe"
copy "C:\Program Files (x86)\Steam\steamapps\common\Phasmophobia\Phasmophobia.exe" "C:\Program Files (x86)\Steam\steamapps\common\Phasmophobia\Mods\Backup\Phasmophobia.exe"
echo success
)
if %id%==3 (
del "C:\Program Files (x86)\Steam\steamapps\common\Phasmophobia\Mods\Backup\Phasmophobia.exe"
copy "C:\Program Files (x86)\Steam\steamapps\common\Phasmophobia\Phasmophobia.exe" "C:\Program Files (x86)\Steam\steamapps\common\Phasmophobia\Mods\Backup\Phasmophobia.exe"
)
if %id%==4 (
cls
echo If the exe is gone, check the mods folder, then enter the Backup folder. There will be an exe backup of the game.
pause
)
if %id%==5 (
cls
cd Mods
cd Updater
wget.exe wget -r https://haxsdev.github.io/ModLoader/ModLoader(Newest).txt
rename "haxsdev.github.io" "Update Folder"
del ".wget-hsts"
cd "Update Folder"
cd "ModLoader"
rename "test.txt" "test.zip"
)
timeout 10
pause