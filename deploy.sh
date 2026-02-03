#!/bin/bash

# Quick deployment setup script for Valentine's Journey

echo "🎉 Valentine's Journey - GitHub Deployment Setup"
echo "================================================"
echo ""

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing Git repository..."
    git init
    git add .
    git commit -m "Initial commit: Valentine's Journey app with SVG images"
    echo "✅ Git repository initialized"
else
    echo "✅ Git repository already initialized"
fi

echo ""
echo "🔗 Next steps to deploy:"
echo ""
echo "1. Create a new repository on GitHub: https://github.com/new"
echo ""
echo "2. Copy the repository URL and run:"
echo "   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "3. Enable GitHub Pages:"
echo "   - Go to Settings → Pages"
echo "   - Branch: gh-pages"
echo "   - Click Save"
echo ""
echo "4. (IMPORTANT) Update vite.config.ts with your repo name:"
echo "   - Change: base: './'  to  base: '/YOUR_REPO_NAME/'"
echo "   - Then: git add vite.config.ts && git commit -m 'Update base path' && git push"
echo ""
echo "5. Your site will be live at: https://YOUR_USERNAME.github.io/YOUR_REPO_NAME/"
echo ""
echo "📝 For more details, see DEPLOYMENT.md"
