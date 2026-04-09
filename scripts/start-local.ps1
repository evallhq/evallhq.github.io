$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $PSScriptRoot
Set-Location $repoRoot

$rubyBin = 'C:\Ruby34-x64\bin'
if (!(Test-Path "$rubyBin\ruby.exe")) {
  Write-Error "Ruby not found at $rubyBin. Install RubyWithDevKit first."
}

$env:PATH = "$rubyBin;$env:PATH"

Write-Host "Starting Jekyll at http://localhost:4000 ..."
bundle exec jekyll serve -l -H localhost
