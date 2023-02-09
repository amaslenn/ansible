Enable-WindowsOptionalFeature -Online -NoRestart -All -FeatureName Microsoft-Windows-Subsystem-Linux
Enable-WindowsOptionalFeature -Online -NoRestart -All -FeatureName VirtualMachinePlatform
Enable-WindowsOptionalFeature -Online -NoRestart -All -FeatureName Microsoft-Hyper-V

# reboot

wsl --install -d Ubuntu-22.04
