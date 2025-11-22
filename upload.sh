#!/bin/bash
# Quick Upload Script untuk GitHub

echo "🚀 Music Bot Playlist Viewer - GitHub Upload"
echo "=============================================="
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git tidak terinstall. Install dulu: https://git-scm.com/"
    exit 1
fi

# Get GitHub username
read -p "GitHub Username: " GITHUB_USER

if [ -z "$GITHUB_USER" ]; then
    echo "❌ Username tidak boleh kosong!"
    exit 1
fi

# Set repo name
REPO_NAME="music-bot-playlist"

echo ""
echo "📦 Repo Name: $REPO_NAME"
echo "🌐 URL akan jadi: https://$GITHUB_USER.github.io/$REPO_NAME/playlist_viewer.html"
echo ""

# Initialize git
echo "🔧 Initialize Git..."
git init
git add .
git commit -m "Initial commit: Telegram Music Bot Playlist Viewer"

# Create branch
git branch -M main

# Add remote
echo "🔗 Setting remote..."
git remote add origin https://github.com/$GITHUB_USER/$REPO_NAME.git

echo ""
echo "✅ Setup selesai!"
echo ""
echo "📋 Langkah selanjutnya:"
echo "1. Buat repo baru di GitHub: https://github.com/new"
echo "   - Repository name: $REPO_NAME"
echo "   - Public"
echo "   - NO README, NO gitignore, NO license"
echo ""
echo "2. Setelah repo dibuat, jalankan:"
echo "   git push -u origin main"
echo ""
echo "3. Enable GitHub Pages:"
echo "   - Buka repo Settings → Pages"
echo "   - Source: Deploy from branch 'main'"
echo "   - Save"
echo ""
echo "4. Update bot .env file:"
echo "   MINI_APP_URL=https://$GITHUB_USER.github.io/$REPO_NAME/playlist_viewer.html"
echo ""
echo "🎉 Selesai!"
