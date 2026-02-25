param(
    [string]$RepoName = "",
    [string]$Visibility = "public"
)

if (-not (Test-Path -Path .git)) {
    git init
    git add .
    git commit -m "Initial commit"
    git branch -M main
}

if ($RepoName -eq "") {
    Write-Host "Specify a repository name: .\push_to_github.ps1 -RepoName <username/repo>"
    exit 1
}

$gh = Get-Command gh -ErrorAction SilentlyContinue
if ($gh) {
    gh repo create $RepoName --$Visibility --source . --remote origin --push
} else {
    Write-Host "GitHub CLI 'gh' not found. Create a remote and push manually."
    Write-Host "Replace <username> and <repo> in the URL below, then run the commands:" -ForegroundColor Yellow
    Write-Host "git remote add origin https://github.com/<username>/<repo>.git"
    Write-Host "git push -u origin main"
}
