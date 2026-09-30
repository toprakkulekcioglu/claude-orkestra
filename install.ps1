$ErrorActionPreference = "Stop"

$Repo = "toprakkulekcioglu/claude-orkestra"
$Branch = "master"
$Dest = if ($args.Count -ge 1) { $args[0] } else { Join-Path $env:USERPROFILE ".claude\commands" }

$Tmp = Join-Path ([System.IO.Path]::GetTempPath()) ("claude-orkestra-" + [guid]::NewGuid())
New-Item -ItemType Directory -Force -Path $Tmp | Out-Null

try {
    Write-Host "claude-orkestra indiriliyor..."
    $Zip = Join-Path $Tmp "repo.zip"
    Invoke-WebRequest -Uri "https://github.com/$Repo/archive/refs/heads/$Branch.zip" -OutFile $Zip
    Expand-Archive -Path $Zip -DestinationPath $Tmp -Force

    New-Item -ItemType Directory -Force -Path $Dest | Out-Null
    Copy-Item (Join-Path $Tmp "claude-orkestra-$Branch\commands\*.md") $Dest -Force

    Write-Host "Kuruldu -> $Dest"
    Write-Host "Claude Code'da /proje-incele ile basla."
}
finally {
    Remove-Item -Recurse -Force $Tmp -ErrorAction SilentlyContinue
}
