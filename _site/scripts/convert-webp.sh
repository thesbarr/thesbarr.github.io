#!/usr/bin/env bash
set -euo pipefail

if ! command -v cwebp >/dev/null 2>&1; then
  echo "cwebp not found. Install with: brew install webp" >&2
  exit 1
fi

files=(
  "images/SBarr-Headshot-Web.jpg"
  "images/SBarr-Headshot-VCU.jpg"
  "images/Contact_Background.jpg"
  "images/bg/brick.jpg"
  "images/projector.png"
  "images/404.jpg"
  "images/me and rodney.png"
  "images/device/VCU-Exp.png"
  "images/device/LSU-exp.png"
  "images/device/Alley-exp.png"
  "images/case-studies/beyond-board.jpg"
  "images/case-studies/beyond-katrina.jpg"
  "images/case-studies/beyond-foodtruck.png"
  "images/case-studies/beyond-letter.png"
  "images/case-studies/beyond-casp.jpg"
  "images/case-studies/beyond-super.jpg"
  "images/case-studies/beyond-awards.png"
  "images/case-studies/beyond-grocery.jpg"
  "images/case-studies/LRP - BSV.png"
  "images/case-studies/PRSA - Warner Letter.jpg"
  "images/sustainability.png"
  "images/case-studies/FCSI.png"
)

for f in "${files[@]}"; do
  out="${f%.*}.webp"
  if [ -f "$f" ] && [ ! -f "$out" ]; then
    cwebp -q 80 "$f" -o "$out" >/dev/null
    echo "Wrote $out"
  fi
done
