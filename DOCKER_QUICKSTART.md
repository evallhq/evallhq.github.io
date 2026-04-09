# Docker quickstart (Windows)

This repository is configured to run with Docker.

## 1) Start Docker Desktop

- Open Docker Desktop from Start Menu.
- Wait until status shows "Engine running".
- If it stays in "starting", reboot Windows once and open Docker Desktop again.

## 2) Start website locally

Run in repository root:

```powershell
docker compose up
```

Then open:

- http://localhost:4000

Stop server:

```powershell
Ctrl + C
```

## 3) Daily Git workflow

```powershell
git status
git add .
git commit -m "update website"
git push origin master
```

## 4) First-time Docker troubleshooting

- Ensure WSL is installed:

```powershell
wsl --status
```

- If Docker still cannot start, restart Windows and launch Docker Desktop once before running `docker compose up`.
