
# Download and install Mysterium node silently
$installerUrl = "https://github.com/mysteriumnetwork/node/releases/latest/download/myst-launcher-win-x64.exe"
$installerPath = "$env:TEMP\myst.exe"
Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath
Start-Process -FilePath $installerPath -ArgumentList "/S" -Wait

# Configure node with your wallet
$mystPath = "$env:ProgramFiles\MysteriumNetwork\myst-launcher"
Set-Location $mystPath
Start-Process "cmd.exe" -ArgumentList "/c myst config set --id keith-node --wallet 0x3F8538EB70e47aE292abae18f2751f171a44b971 && myst service install && myst service start" -WindowStyle Hidden
