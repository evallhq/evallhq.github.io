$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $PSScriptRoot
Set-Location $repoRoot

$dockerCli = "C:\Program Files\Docker\Docker\resources\bin\docker.exe"
if (!(Test-Path $dockerCli)) {
  Write-Error "Docker CLI not found. Please install Docker Desktop first."
}

$status = & $dockerCli desktop status 2>$null
if ($status -notmatch 'running') {
  Write-Host "Docker engine is not ready. Starting Docker Desktop..."
  $desktopExe = "C:\Program Files\Docker\Docker\Docker Desktop.exe"
  if (Test-Path $desktopExe) {
    Start-Process -FilePath $desktopExe
  }
  Write-Host "Please wait until Docker Desktop shows Engine running, then rerun this script if needed."
}

Write-Host "Starting site with docker compose at http://localhost:4000 ..."
& $dockerCli compose up
