$pkgFolder = Join-Path $PSScriptRoot ..
$nuspecFolder = Join-Path $pkgFolder packages
$nuspecPath = Join-Path $nuspecFolder LocalDevTools.nuspec
$pkgPath = Join-Path $pkgFolder *.nupkg

# Visual Studio
cinst VisualStudio2013Professional -InstallArguments "SQL WebTools"

# ReSharper
cinst resharper -version 8.1.23.546

# Everything else that doesn't have a Chocolatey package has been added to a local package.
Write-Host Adding other packages to Visual Studio...

# Create the package
Write-Host Creating NUPKG file for spec $nuspecPath ...
cpack $nuspecPath

# Install the package
Write-Host Installing newly created package...
cinst LocalDevTools -source $pkgFolder

# Delete the old package
Write-Host Deleting generated package...
Remove-Item $pkgPath