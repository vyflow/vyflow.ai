# vyflow.ai

vyflow's marketing site — plain static HTML/CSS, no build step, served via GitHub Pages.

- `index.html` — the homepage.
- `privacy.html` — privacy policy.
- `CNAME` — the custom domain (`vyflow.ai`); required by GitHub Pages, don't remove.
- `.nojekyll` — tells Pages to skip Jekyll processing and serve files as-is. Required: without it, Pages' legacy Jekyll build can fail on plain HTML for no visible reason.

## This repo is a public mirror

This repo (`vyflow/vyflow.ai`) holds *only* the site. The actual editing happens in
`~/Documents/vyflow/site/` inside the private `vyflow` monorepo, which also has
internal docs, scripts, and credentials that must never be public.

## Deploy

```
cd ~/Documents/vyflow
./site/deploy.sh
```

This splits `site/` out of the monorepo's history and force-pushes it as this repo's
`main`. Never push the monorepo's own `main` here directly.
