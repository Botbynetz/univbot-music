@echo off
REM Quick Upload Script untuk GitHub (Windows)

echo.
echo 🚀 Music Bot Playlist Viewer - GitHub Upload
echo ==============================================
echo.

REM Check if git is installed
git --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Git tidak terinstall. Install dulu: https://git-scm.com/
    pause
    exit /b 1
)

set /p GITHUB_USER="GitHub Username: "

if "%GITHUB_USER%"=="" (
    echo ❌ Username tidak boleh kosong!
    pause
    exit /b 1
)

set REPO_NAME=music-bot-playlist

echo.
echo 📦 Repo Name: %REPO_NAME%
echo 🌐 URL akan jadi: https://%GITHUB_USER%.github.io/%REPO_NAME%/playlist_viewer.html
echo.

REM Initialize git
echo 🔧 Initialize Git...
git init
git add .
git commit -m "Initial commit: Telegram Music Bot Playlist Viewer"

REM Create branch
git branch -M main

REM Add remote
echo 🔗 Setting remote...
git remote add origin https://github.com/%GITHUB_USER%/%REPO_NAME%.git

echo.
echo ✅ Setup selesai!
echo.
echo 📋 Langkah selanjutnya:
echo 1. Buat repo baru di GitHub: https://github.com/new
echo    - Repository name: %REPO_NAME%
echo    - Public
echo    - NO README, NO gitignore, NO license
echo.
echo 2. Setelah repo dibuat, jalankan:
echo    git push -u origin main
echo.
echo 3. Enable GitHub Pages:
echo    - Buka repo Settings → Pages
echo    - Source: Deploy from branch 'main'
echo    - Save
echo.
echo 4. Update bot .env file:
echo    MINI_APP_URL=https://%GITHUB_USER%.github.io/%REPO_NAME%/playlist_viewer.html
echo.
echo 🎉 Selesai!
echo.
pause
