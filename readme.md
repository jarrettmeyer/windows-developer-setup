# Developer Setup

This is my developer setup project. It sets up a brand new developer machine, mostly using Chocolatey.

The only feature to pay attention to is the .\modules\install-visual-studio.ps1 script. This script is going to automatically generate a local NUPKG folder and install that package. That's because, at the time of this writing, a few of these projects were either out-of-date or non-existent. I don't really want to create my own packages, mainly because I don't want to update them.

