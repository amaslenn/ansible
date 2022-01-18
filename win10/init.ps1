Enable-WindowsOptionalFeature -Online -NoRestart -All -FeatureName Microsoft-Windows-Subsystem-Linux
Enable-WindowsOptionalFeature -Online -NoRestart -All -FeatureName VirtualMachinePlatform
Enable-WindowsOptionalFeature -Online -NoRestart -All -FeatureName Microsoft-Hyper-V

# reboot

Invoke-WebRequest -Uri "https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi" -OutFile wsl.msi
.\wsl.msi /quiet

wsl --set-default-version 2
wsl --install -d Ubuntu-20.04
