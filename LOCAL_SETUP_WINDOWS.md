# Windows local setup (academicpages)

This guide is for this repository on Windows.

## 1) First-time setup

1. Install Node.js (LTS):
   winget install -e --id OpenJS.NodeJS.LTS --scope user --accept-source-agreements --accept-package-agreements

2. Install Ruby with DevKit:
   winget install -e --id RubyInstallerTeam.RubyWithDevKit.3.4 --source winget --scope user --accept-source-agreements --accept-package-agreements

3. Install gems in repository root:
   PowerShell:
   $env:PATH = "C:\Ruby34-x64\bin;$env:PATH"
   bundle config set --local path 'vendor/bundle'
   bundle install

## 2) Start local preview

Option A:
- Run scripts/start-local.ps1

Option B:
PowerShell in repository root:
$env:PATH = "C:\Ruby34-x64\bin;$env:PATH"
bundle exec jekyll serve -l -H localhost

Then open http://localhost:4000

## 3) Daily git workflow

git status
git add .
git commit -m "update website"
git push origin master

## 4) Common issues

- Error: No source of timezone data could be found
  Fix: ensure Gemfile includes tzinfo-data for Windows platforms, then run bundle install.

- Error: Could not locate Gemfile
  Fix: run commands from repository root folder.

- Command not found for ruby/bundle
  Fix: reopen terminal or set PATH in current shell:
  $env:PATH = "C:\Ruby34-x64\bin;$env:PATH"
