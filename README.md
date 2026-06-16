# EV Charge Calculator

A lightweight, mobile-first web app that estimates EV charging outcomes from a saved
reference charging session — no backend, all data stored on-device.

## What it does

Set up one or more **charging stations** (each derived from a reference session:
start time, end time, energy delivered, price per kWh). From the station's derived
charge rate, the app estimates:

1. **How much by time** — enter a duration, get the energy (kWh) and cost.
2. **How long by cost** — enter a budget (₱), get the charge time and kWh.

Stations are saved in the browser via `localStorage` and selectable from a dropdown.

## Run locally

It's a single static file. Just open `index.html` in any browser, or serve it:

```bash
python3 -m http.server 8000
# then visit http://localhost:8000
```

## Deployment

Pushing to `main` triggers the GitHub Actions workflow in
`.github/workflows/deploy.yml`, which publishes the site to GitHub Pages.

To enable: in the repo, go to **Settings → Pages → Build and deployment → Source**
and select **GitHub Actions**.

## Notes

Estimates assume a constant charge rate matching each station's reference session.
Currency is Philippine peso (₱).
