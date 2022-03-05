$packageName = 'pyoxidizer'
$fileType = 'msi'
$url = 'https://github.com/indygreg/PyOxidizer/releases/download/pyoxidizer%2F0.18.0/PyOxidizer-0.18.0-x64.msi'
$silentArgs = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0

Install-ChocolateyPackage $packageName $fileType $silentArgs $url
