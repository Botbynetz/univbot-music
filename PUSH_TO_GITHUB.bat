@echo off
REM ==============================================
REM QUICK GITHUB PUSH SCRIPT
REM ==============================================

cls
echo.
echo 🚀 GITHUB PUSH SCRIPT
echo ========================================
echo.

REM Get GitHub username
set /p GITHUB_USER="Masukkan GitHub Username kamu: "

if "%GITHUB_USER%"=="" (
    echo.
    echo ❌ Username tidak boleh kosong!
    echo.
    pause
    exit /b 1
)

echo.
echo 📦 Repository: music-bot-playlist
echo 👤 User: %GITHUB_USER%
echo 🌐 URL: https://%GITHUB_USER%.github.io/music-bot-playlist/
echo.

set /p CONFIRM="Lanjutkan? (Y/N): "
if /i not "%CONFIRM%"=="Y" (
    echo.
    echo ❌ Dibatalkan
    pause
    exit /b 0
)

echo.
echo 🔧 Setting up remote...
git remote remove origin 2>nul
git remote add origin https://github.com/%GITHUB_USER%/music-bot-playlist.git

echo.
echo 📤 Pushing to GitHub...
git push -u origin main

if errorlevel 1 (
    echo.
    echo ❌ Push gagal! Pastikan:
    echo    1. Repo 'music-bot-playlist' sudah dibuat di GitHub
    echo    2. Repo bersifat Public
    echo    3. Username benar
    echo    4. Git credentials sudah configured
    echo.
    echo 💡 Butuh token? Generate di: https://github.com/settings/tokens
    echo.
    pause
    exit /b 1
)

echo.
echo ✅ BERHASIL! Files sudah di push ke GitHub
echo.
echo 📋 Langkah selanjutnya:
echo.
echo 1. Buka: https://github.com/%GITHUB_USER%/music-bot-playlist/settings/pages
echo 2. Source: Deploy from branch 'main'
echo 3. Save
echo 4. Tunggu 2-3 menit
echo 5. URL Mini App: https://%GITHUB_USER%.github.io/music-bot-playlist/playlist_viewer.html
echo.
echo 6. Update .env file:
echo    MINI_APP_URL=https://%GITHUB_USER%.github.io/music-bot-playlist/playlist_viewer.html
echo.
echo 🎉 Done!
echo.
pause
