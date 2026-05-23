<#
.SYNOPSIS
  Builds every standalone .tex entrypoint under resume/src/CV.

.DESCRIPTION
  Runs latexmk with repo-root .latexmkrc (aux -> resume/build; PDFs normally -> resume/out).
  After all builds: moves any .pdf still under resume/build into resume/out, then clears resume/build; keeps only .pdf under resume/out; strips stray aux files next to .tex under CV if any.
#>

$ErrorActionPreference = 'Stop'

function Require-Command($name) {
  if (-not (Get-Command $name -ErrorAction SilentlyContinue)) {
    throw "Missing required command: $name. Please install TeX (latexmk) and ensure it's on PATH."
  }
}

function Move-BuildPdfsToOut([string]$buildDirPath, [string]$outDirPath) {
  if (-not (Test-Path -LiteralPath $buildDirPath)) { return }
  New-Item -ItemType Directory -Force -Path $outDirPath | Out-Null
  Get-ChildItem -LiteralPath $buildDirPath -Filter '*.pdf' -File -Recurse -ErrorAction SilentlyContinue |
    ForEach-Object {
      $dest = Join-Path $outDirPath $_.Name
      Move-Item -LiteralPath $_.FullName -Destination $dest -Force
    }
}

function Remove-NonPdfFiles([string]$directory) {
  if (-not (Test-Path -LiteralPath $directory)) { return }
  Get-ChildItem -LiteralPath $directory -File -Recurse -ErrorAction SilentlyContinue |
    Where-Object { $_.Extension -notmatch '\.(?i)pdf$' } |
    Remove-Item -Force -ErrorAction SilentlyContinue
}

function Clear-BuildDirectory([string]$buildDirPath) {
  # After PDFs are moved to resume/out, remove the whole build tree (aux/intermediate).
  if (Test-Path -LiteralPath $buildDirPath) {
    Remove-Item -LiteralPath $buildDirPath -Recurse -Force -ErrorAction SilentlyContinue
  }
  New-Item -ItemType Directory -Force -Path $buildDirPath | Out-Null
}

function Remove-CvFolderArtifacts([string]$cvDirPath) {
  # Anything latexmk might drop next to sources (not .tex / .pdf).
  $artifactPattern = '\.(?i)(aux|log|fls|fdb_latexmk|out|toc|bbl|blg|bcf|xdv|nav|snm|vrb|synctex\.gz)$'
  Get-ChildItem -LiteralPath $cvDirPath -File -ErrorAction SilentlyContinue |
    Where-Object { $_.Name -match $artifactPattern } |
    Remove-Item -Force -ErrorAction SilentlyContinue
}

Require-Command 'latexmk'

$root = Resolve-Path (Join-Path $PSScriptRoot '..')
Set-Location $root

New-Item -ItemType Directory -Force -Path 'resume/build', 'resume/out' | Out-Null

$cvDir = Join-Path $root 'resume/src/CV'
$targets =
  Get-ChildItem -LiteralPath $cvDir -Filter '*.tex' -File |
    Sort-Object Name |
    ForEach-Object { $_.FullName }

if ($targets.Count -eq 0) {
  throw "No .tex files found under $cvDir"
}

$buildDir = Join-Path $root 'resume/build'
$outDir = Join-Path $root 'resume/out'

foreach ($t in $targets) {
  Write-Host "Building $t"
  latexmk -pdf -cd -quiet $t
}

Move-BuildPdfsToOut $buildDir $outDir
Remove-NonPdfFiles $outDir
Clear-BuildDirectory $buildDir
Remove-CvFolderArtifacts $cvDir

Write-Host "Done. PDFs are in resume/out/ (build dir cleared; non-PDF files removed from out)."
