# Custom Script Extension for Game Streaming VM

$path = (New-Item -Path "C:\" -Name "gamestream-setup-files" -ItemType "Directory").FullName

# Download and install Chrome
Invoke-WebRequest -uri "http://dl.google.com/chrome/install/375.126/chrome_installer.exe" -OutFile "$path\ChromeSetup.exe" -ErrorAction SilentlyContinue
Start-Process -FilePath $path\ChromeSetup.exe -Args "/silent /install"

# Download installers/ driver
## Parsec
Invoke-WebRequest -uri "https://s3.amazonaws.com/parsec-build/package/parsec-windows.exe" -OutFile "$path\parsec-windows.exe" -ErrorAction SilentlyContinue
## Battlenet, currently does not work via Invoke-WebRequest
# Invoke-WebRequest -uri "https://www.battle.net/download/getInstallerForGame?os=win&locale=enUS&version=LIVE&gameProgram=BATTLENET_APP" -OutFile "$path\Battle.net-Setup.exe" -ErrorAction SilentlyContinue
## Virtual Audio Cable
Invoke-WebRequest -uri "https://download.vb-audio.com/Download_CABLE/VBCABLE_Driver_Pack43.zip" -OutFile "$path\VBCABLE_Driver_Pack43.zip" -ErrorAction SilentlyContinue
## NVIDIA GRID Driver
Invoke-WebRequest -uri "https://go.microsoft.com/fwlink/?linkid=874181" -OutFile "$path\431.02_grid_win10_server2016_server2019_64bit_international.exe" -ErrorAction SilentlyContinue
## Steam
Invoke-WebRequest -uri "https://steamcdn-a.akamaihd.net/client/installer/SteamSetup.exe" -OutFile "$path\SteamSetup.exe" -ErrorAction SilentlyContinue
## Unzip Virtual Audio Cable
Expand-Archive -LiteralPath "$path\VBCABLE_Driver_Pack43.zip" -DestinationPath "$path\VBCABLE_Driver_Pack43"

# Download build steps
Invoke-WebRequest -uri "https://raw.githubusercontent.com/aga23/vm-gamestream/master/vm-gamestream-buildsteps.md" -OutFile "$path\vm-gamestream-buildsteps.md" -ErrorAction SilentlyContinue