# Novene Games

A responsive dark game portal inspired by the supplied Novene browser screenshots.

## Cloudflare Pages deployment
- Framework preset: **None**
- Build command: leave blank
- Build output directory: **/** (repository root)
- Root directory: leave blank

Connect this GitHub repository in Cloudflare Pages. Every push to main will trigger a deployment. Add a custom domain in the Pages project under **Custom domains**.

## Game catalog
Edit `games.js` to add game metadata. The current sample cards are catalog placeholders; they are not playable until you add legitimate hosted HTML5 game URLs and a player integration.

## Site asset folders
- `assets/games/` — game cover art / thumbnails. Replace `PLACEHOLDER.svg` with your image files and update each game's `image` field in `games.js`.
- `assets/apps/` — app/service icons for the apps grid.
- `assets/branding/` — site logo and favicon.
- `assets/backgrounds/` — optional page backgrounds.

Recommended game cover size: **512 × 512 px** (square). Use WebP or optimized PNG/JPG for photos/art. Keep filenames lowercase and update the matching path in `games.js`.
