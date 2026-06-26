# EV Charge Calculator

A lightweight, mobile-first web app that estimates EV charging outcomes from a saved
reference charging session — no backend, no build step, all data stored on-device.

## What it does

Set up one or more **charging stations** (each derived from a reference session:
start time, end time, energy delivered, price per kWh). From the station's derived
charge rate, the app estimates:

1. **How much by time** — enter a duration, get the energy (kWh) and cost.
2. **How long by cost** — enter a budget (₱), get the charge time and kWh.

Stations are saved in the browser via `localStorage` and selectable from a dropdown.

The entire app is a single, self-contained `index.html` (markup, styles, and
JavaScript inline). There is no server, no database, and no build tooling.

## Prerequisites

This is a static site with no build step or dependencies. You only need:

- **A modern web browser** (Chrome, Firefox, Safari, or Edge — any recent version).
- **Git** — to clone the repository.
- *(Optional)* **Python 3.6+** — only if you want to serve the file over HTTP with the
  command below. Any other static file server (e.g. `npx serve`) works just as well.

There are **no Node.js, package manager, or external account/service requirements**, and
there is **nothing to install** after cloning.

## Local Setup

1. **Clone the repository:**

   ```bash
   git clone git@github.com:alsapalat/ev-charge-calc.git
   cd ev-charge-calc
   ```

2. **Install dependencies:**

   None. The app has no dependencies and no build step — skip straight to running it.

3. **Configure environment variables:**

   None required. The app runs entirely in the browser and reads no environment
   variables (see [Environment variables](#environment-variables) below).

4. **Run the app.** Either open the file directly, or serve it over HTTP:

   ```bash
   # Option A — open directly in your default browser (macOS)
   open index.html

   # Option B — serve over HTTP, then visit http://localhost:8000
   python3 -m http.server 8000
   ```

That's it — the app is fully functional from a clean checkout.

## Environment variables

None. This project does not read any environment variables and has no `.env.example`,
because all configuration (charging stations and the electricity price) is entered in the
UI and persisted to the browser's `localStorage`.

## Deployment

Pushing to `main` triggers the GitHub Actions workflow in
`.github/workflows/deploy.yml`, which publishes the site to GitHub Pages.

To enable: in the repo, go to **Settings → Pages → Build and deployment → Source**
and select **GitHub Actions**.

## Notes

Estimates assume a constant charge rate matching each station's reference session.
Currency is Philippine peso (₱).
