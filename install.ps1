# thebigbang installer for Windows (PowerShell)
# Usage:
#   irm https://raw.githubusercontent.com/pyscriptcli/thebigbang/main/install.ps1 | iex
# Or locally:
#   .\install.ps1 [-Global] [-Target <path>]

param(
    [switch]$Global,
    [string]$Target
)

$ErrorActionPreference = "Stop"

Write-Host "======================================================" -ForegroundColor Cyan
Write-Host "  THE BIG BANG THEORY ENGINEERING SQUAD INSTALLER     " -ForegroundColor Yellow
Write-Host "======================================================" -ForegroundColor Cyan

$RepoUrl = "https://github.com/pyscriptcli/thebigbang"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

# Determine destination directory
if ($Target) {
    $DestDir = $Target
} elseif ($Global -or (Test-Path "$HOME\.gemini\config")) {
    $DestDir = "$HOME\.gemini\config\skills"
} elseif (Test-Path "$HOME\.claude") {
    $DestDir = "$HOME\.claude\skills"
} else {
    $DestDir = "$HOME\.gemini\config\skills"
}

New-Item -ItemType Directory -Force -Path $DestDir | Out-Null
Write-Host "`nTarget skills directory: $DestDir" -ForegroundColor Gray

# If running locally from cloned repo
if (Test-Path "$ScriptDir\skills") {
    Write-Host "Installing from local repository..." -ForegroundColor Green
    Copy-Item -Path "$ScriptDir\skills\*" -Destination $DestDir -Recurse -Force
} else {
    Write-Host "Fetching skills from GitHub..." -ForegroundColor Green
    $TempZip = "$env:TEMP\thebigbang.zip"
    $TempExtract = "$env:TEMP\thebigbang-main"

    Invoke-WebRequest -Uri "$RepoUrl/archive/refs/heads/main.zip" -OutFile $TempZip
    Expand-Archive -Path $TempZip -DestinationPath $TempExtract -Force
    Copy-Item -Path "$TempExtract\thebigbang-main\skills\*" -Destination $DestDir -Recurse -Force

    Remove-Item -Path $TempZip -Force -ErrorAction SilentlyContinue
    Remove-Item -Path $TempExtract -Recurse -Force -ErrorAction SilentlyContinue
}

Write-Host "`nInstalled squad members into $DestDir:" -ForegroundColor Cyan
Get-ChildItem -Path $DestDir -Directory | Where-Object { 
    @("sheldon", "leonard", "penny", "howard", "raj", "bernadette", "amy", "squad", "thebigbang", "all") -contains $_.Name 
} | ForEach-Object {
    Write-Host "  [+] $($_.Name)" -ForegroundColor Green
}

Write-Host "`nBazinga! Your squad is ready." -ForegroundColor Yellow
Write-Host "Try typing '/sheldon' or '/thebigbang' in your AI coding assistant to get started!`n" -ForegroundColor White
