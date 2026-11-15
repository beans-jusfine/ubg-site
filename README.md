# Fernlight

Fernlight is the website and browser-style games hub. The Scramjet proxy engine is maintained separately in [ubg-site-sj](https://github.com/beans-jusfine/ubg-site-sj); the Wisp server remains in its own repository.

## Cloudflare Pages

Connect this repository to Cloudflare Pages with:

- **Framework preset:** None
- **Build command:** `npm run build`
- **Build output directory:** `/` (repository root)

The build clones the public `ubg-site-sj` repository, installs Scramjet, BareMux and Epoxy, then places their generated assets at the Fernlight site root. This is intentional: `/sw.js`, `/scram/`, `/baremux/` and `/epoxy/` must be served from the same origin as Fernlight for the service worker to control the site.

## Configuration

Open Settings in Fernlight and enter your Wisp server's `wss://` URL. The AI endpoint is configured by changing `AI_URL` near the top of `index.html` when you have a Worker endpoint.

The Wisp server is not included in this repository.
