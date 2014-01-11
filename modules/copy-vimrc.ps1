$vimrcPath = Join-Path $PSScriptRoot ..\_vimrc

Write-Host Copying _vimrc file to current user home directory...
Copy-Item $vimrcPath $env:home
