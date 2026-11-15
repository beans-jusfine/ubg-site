#!/usr/bin/env bash
set -euo pipefail

# Build Scramjet assets from the separate ubg-site-sj repository.
rm -rf .scramjet-source .scramjet-build
git clone --depth 1 https://github.com/beans-jusfine/ubg-site-sj.git .scramjet-source
npm install --prefix .scramjet-source
(
  cd .scramjet-source
  OUT_DIR=../.scramjet-build npm run setup
)

# These files must be served from Fernlight's own origin so /sw.js can control the site.
cp -R .scramjet-build/scram .
cp -R .scramjet-build/baremux .
cp -R .scramjet-build/epoxy .
cp .scramjet-build/sw.js ./sw.js

rm -rf .scramjet-source .scramjet-build
echo "Fernlight + Scramjet assets are ready for deployment."
