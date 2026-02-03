# Quick Reference - Deploy in 5 Minutes

## One-Time Setup

```bash
# 1. Add your GitHub repository
git remote add origin https://github.com/YOUR_USERNAME/valentine-journey.git
git branch -M main
git push -u origin main

# 2. Go to GitHub repo → Settings → Pages → Select "gh-pages" branch
```

## Update Config (Important!)

Edit `vite.config.ts` line 6:
```typescript
base: '/valentine-journey/',  // Change to your repo name
```

Then:
```bash
git add vite.config.ts
git commit -m "Update GitHub Pages base path"
git push
```

## Your Site URL

```
https://YOUR_USERNAME.github.io/valentine-journey/
```

## Check Deployment Status

→ GitHub repo → Actions tab → View logs

## What's Deployed

- ✅ 5 custom SVG images (no external dependencies)
- ✅ Fully responsive Valentine's journey app
- ✅ Automatic GitHub Actions deployment
- ✅ Works offline, lightning fast

## Troubleshooting

**Images don't show?** Update base path in `vite.config.ts`

**Deployment failed?** Check Actions tab for error details

**Still not working?** See `DEPLOYMENT.md` for detailed guide

---

🎉 Ready to go! Push and enjoy your live site!
