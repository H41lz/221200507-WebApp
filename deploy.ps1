# GitHub Pages Deployment Script
# This script will help you push your portfolio to GitHub Pages

Write-Host "=== GitHub Pages Deployment Script ===" -ForegroundColor Cyan
Write-Host ""

# Check if git is initialized
if (-not (Test-Path .git)) {
    Write-Host "Initializing Git repository..." -ForegroundColor Yellow
    git init
} else {
    Write-Host "Git repository already initialized." -ForegroundColor Green
}

# Check if remote exists
$remoteExists = git remote get-url origin 2>$null
if ($LASTEXITCODE -ne 0) {
    Write-Host "Adding remote repository..." -ForegroundColor Yellow
    git remote add origin https://github.com/h41lz/oliver-lanuza.github.io.git
} else {
    Write-Host "Remote already configured: $remoteExists" -ForegroundColor Green
}

# Add all files
Write-Host ""
Write-Host "Adding all files to staging..." -ForegroundColor Yellow
git add .

# Commit
Write-Host "Creating commit..." -ForegroundColor Yellow
$commitMessage = Read-Host "Enter commit message (or press Enter for default)"
if ([string]::IsNullOrWhiteSpace($commitMessage)) {
    $commitMessage = "Update portfolio website"
}
git commit -m $commitMessage

# Push to GitHub
Write-Host ""
Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
git branch -M main
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "=== Deployment Successful! ===" -ForegroundColor Green
    Write-Host "Your site should be available at: https://h41lz.github.io/oliver-lanuza.github.io/" -ForegroundColor Cyan
    Write-Host "Note: It may take a few minutes for changes to appear." -ForegroundColor Yellow
} else {
    Write-Host ""
    Write-Host "=== Deployment Failed ===" -ForegroundColor Red
    Write-Host "Please check the error messages above." -ForegroundColor Yellow
}

