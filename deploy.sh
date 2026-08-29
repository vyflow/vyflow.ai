#!/usr/bin/env bash
# Deploy site/ to the public vyflow.ai GitHub Pages repo.
#
# vyflow/site/ is a subdirectory of this monorepo, but vyflow.ai on GitHub is a
# separate, PUBLIC repo containing only the site files. This script splits
# site/ out of this repo's history and force-pushes it as vyflow.ai's main —
# never push this repo's actual `main` branch there, it holds internal docs.
#
# Usage: ./site/deploy.sh

set -euo pipefail
REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO"

BRANCH="site-only-$$"
git subtree split --prefix=site -b "$BRANCH"
git push vyflow-ai-pages "$BRANCH":main --force
git branch -D "$BRANCH"

echo "==> Pushed. Pages rebuilds in a few seconds: https://vyflow.ai"
