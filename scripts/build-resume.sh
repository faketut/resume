#!/usr/bin/env bash
# Builds every standalone .tex entrypoint under src/CV.
# Mirrors scripts/build-resume.ps1: latexmk uses repo-root .latexmkrc
# (aux -> build/, PDFs -> out/). After builds, sweep stray PDFs from build/
# into out/, clear build/, and strip aux files left next to .tex.

set -euo pipefail

command -v latexmk >/dev/null 2>&1 || {
  echo "Missing required command: latexmk. Install MacTeX or BasicTeX (brew install --cask mactex-no-gui)." >&2
  exit 1
}

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
root="$(cd "$script_dir/.." && pwd)"
cd "$root"

mkdir -p build out

cv_dir="$root/src/CV"
shopt -s nullglob
targets=("$cv_dir"/*.tex)
shopt -u nullglob

if [ ${#targets[@]} -eq 0 ]; then
  echo "No .tex files found under $cv_dir" >&2
  exit 1
fi

IFS=$'\n' targets=($(printf '%s\n' "${targets[@]}" | sort))
unset IFS

for t in "${targets[@]}"; do
  echo "Building $t"
  latexmk -pdf -cd -quiet "$t"
done

# Move any stray PDFs from build/ to out/
if [ -d build ]; then
  find build -type f -name '*.pdf' -exec mv -f {} out/ \;
fi

# Keep only PDFs in out/
if [ -d out ]; then
  find out -type f ! -name '*.pdf' -delete
fi

# Wipe build/ (aux/intermediate) and recreate empty
rm -rf build
mkdir -p build

# Strip aux artifacts that latexmk may have dropped next to sources
find "$cv_dir" -maxdepth 1 -type f \( \
  -name '*.aux' -o -name '*.log' -o -name '*.fls' -o -name '*.fdb_latexmk' \
  -o -name '*.out' -o -name '*.toc' -o -name '*.bbl' -o -name '*.blg' \
  -o -name '*.bcf' -o -name '*.xdv' -o -name '*.nav' -o -name '*.snm' \
  -o -name '*.vrb' -o -name '*.synctex.gz' \) -delete

echo "Done. PDFs are in out/ (build dir cleared; non-PDF files removed from out)."
