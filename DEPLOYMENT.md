# Deployment Guide - Valentine's Journey 2

## What I've Done

✅ **Created local SVG images** - Replaced all external Tenor GIFs with local SVG assets:
- `public/images/cute-love.svg` - Intro scene (two characters in love)
- `public/images/cat-knife.svg` - Punishment scene (cat with knife)
- `public/images/pat-head-good-boy.svg` - Affirmation scene (head pat)
- `public/images/milk-and-mocha-hug.svg` - Letter scene (hugging characters)
- `public/images/bubu-dudu-sseeyall.svg` - Proposal scene (excited characters)

✅ **Updated GitHub Pages deployment workflow** (`.github/workflows/deploy.yml`)
- Proper Node.js setup
- Dependency installation with npm ci
- Vite build with TypeScript compilation
- Artifact upload and deployment to GitHub Pages

✅ **Updated all scene components** to use local images instead of external URLs

## Deployment Steps

### 1. Initialize Git Repository
```bash
cd /Users/sprite/Downloads/valentine\'s-journey-2
git init
git add .
git commit -m "Initial commit: Valentine's Journey app"
```

### 2. Create GitHub Repository
1. Go to https://github.com/new
2. Create a new repository (e.g., `valentine-journey`)
3. **Important**: Choose your repository visibility (public/private)

### 3. Connect Local to GitHub
```bash
git remote add origin https://github.com/YOUR_USERNAME/valentine-journey.git
git branch -M main
git push -u origin main
```

### 4. Enable GitHub Pages
1. Go to your repository on GitHub
2. Settings → Pages
3. Select "Deploy from a branch" (if not already selected)
4. Choose branch: `gh-pages`
5. Click Save

### 5. Update Vite Config (if needed)
If your repository is NOT named `valentine-journey`, update `vite.config.ts`:

```typescript
export default defineConfig({
  plugins: [react()],
  base: '/YOUR_REPO_NAME/',  // Update with your actual repo name
  define: {
    'process.env': {}
  }
});
```

Then push the change:
```bash
git add vite.config.ts
git commit -m "Update base path for GitHub Pages"
git push
```

## What Happens Next

1. Push code to GitHub main branch
2. GitHub Actions automatically runs `.github/workflows/deploy.yml`
3. Workflow builds your Vite app
4. Deploys to `gh-pages` branch
5. Site is live at: `https://YOUR_USERNAME.github.io/YOUR_REPO_NAME/`

## Local Testing

To test locally before deploying:

```bash
# Install dependencies
npm install

# Run dev server
npm run dev

# Build and preview
npm run build
npm run preview
```

## Notes

- All images are now SVG format (vector-based, no external dependencies)
- Images are responsive and scale perfectly
- No internet connection required for images to load
- Deployment is fully automated via GitHub Actions

## Troubleshooting

**Images not showing?**
- Check the base path in `vite.config.ts` matches your repository name
- Ensure `public/` directory is included in your repository

**Workflow fails?**
- Check GitHub Actions tab for error logs
- Ensure repository has GitHub Pages enabled
- Verify branch is set to `main`

**Site shows 404?**
- Wait 5 minutes for initial deployment
- Check the URL matches: `https://github.com/[username]/[repo]` → `https://[username].github.io/[repo]/`
