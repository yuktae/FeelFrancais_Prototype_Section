# Feel Français — Revue des prévalidations de section

Live review: https://feel-francais-section-review-yukta.fly.dev/

Seven situations, with three visual options for each. Includes AI-proposed valid/invalid button highlights, visibly separated sections, original references, image enlargement, and reviewer comments.

## Reviewing

1. Open the live review.
2. Select A, B, C or « À retravailler » for each situation and add comments.
3. Use « Exporter mes retours » to download your feedback and send it to Yukta. « Enregistrer la revue remplie » downloads a completed HTML copy.

Drafts stay in the reviewer's browser on their device. Feedback is not automatically sent to a server or shared between reviewers. The visual mockups are images; their drawn document decision buttons do not change any student dossier.

## Deployment

The site is a standalone HTML file in `public/index.html`. Fonts and images are embedded, so the downloaded completed review also works offline. Nginx serves a precompressed copy over HTTPS. Fly.io runs one shared CPU machine with 256 MB RAM, automatically stopping when idle and starting for visitors.

After signing in with `fly auth login`, deploy from this repository:

```text
fly deploy --remote-only --ha=false
```

For a new account, create the app first (choose another unique name in `fly.toml` if necessary):

```text
fly apps create feel-francais-section-review-yukta --org personal
```

To publish an updated review, replace `public/index.html` with the latest standalone review HTML, commit and push the changes, then run the deployment command again.

Fly.io dashboard: https://fly.io/apps/feel-francais-section-review-yukta
