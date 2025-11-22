@echo off
cls
echo.
echo 🚀 GITHUB PUSH WITH TOKEN
echo ==========================================
echo.
echo Repo: https://github.com/Botbynetz/univbot-music
echo.
echo Butuh Personal Access Token dari GitHub!
echo.
echo 📋 Cara dapat token:
echo 1. Buka: https://github.com/settings/tokens
echo 2. "Generate new token (classic)"
echo 3. Centang: repo (full control)
echo 4. Generate dan COPY token
echo.

set /p TOKEN="Paste GitHub Token kamu: "

if "%TOKEN%"=="" (
    echo.
    echo ❌ Token tidak boleh kosong!
    pause
    exit /b 1
)

echo.
echo 🔧 Setting remote with token...
git remote set-url origin https://%TOKEN%@github.com/Botbynetz/univbot-music.git

echo.
echo 📤 Pushing to GitHub...

REM Pull dulu jika ada content
git pull origin main --allow-unrelated-histories --no-edit 2>nul

REM Push
git push -u origin main

if errorlevel 1 (
    echo.
    echo ❌ Push gagal!
    echo.
    echo Coba opsi lain:
    echo 1. Generate token baru: https://github.com/settings/tokens
    echo 2. Pastikan scope 'repo' di-centang
    echo 3. Atau upload manual via web:
    echo    https://github.com/Botbynetz/univbot-music/upload/main
    echo.
    pause
    exit /b 1
)

echo.
echo ✅ BERHASIL! Files sudah di push ke GitHub
echo.
echo 📋 Langkah selanjutnya:
echo.
echo 1. Aktifkan GitHub Pages:
echo    https://github.com/Botbynetz/univbot-music/settings/pages
echo.
echo 2. Settings:
echo    - Source: Deploy from branch 'main'
echo    - Folder: / (root)
echo    - Save
echo.
echo 3. Tunggu 2-3 menit, lalu buka:
echo    https://botbynetz.github.io/univbot-music/playlist_viewer.html
echo.
echo 4. Update .env file:
echo    MINI_APP_URL=https://botbynetz.github.io/univbot-music/playlist_viewer.html
echo.
echo 5. Restart bot:
echo    cd "d:\bot musik"
echo    python new_interactive_bot.py
echo.
echo 🎉 Done!
echo.
pause
