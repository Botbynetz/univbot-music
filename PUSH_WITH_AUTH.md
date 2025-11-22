# 🔐 CARA PUSH KE GITHUB (AUTH REQUIRED)

Repo sudah di-set ke: `https://github.com/Botbynetz/univbot-music.git`

Tapi butuh authentication. Ada 2 cara:

---

## ✅ **Cara 1: GitHub Personal Access Token (RECOMMENDED)**

### Step 1: Generate Token
1. Buka: https://github.com/settings/tokens
2. Klik **"Generate new token"** → **"Generate new token (classic)"**
3. **Note:** "Music Bot Upload"
4. **Expiration:** 90 days (atau No expiration)
5. **Scopes:** Centang **`repo`** (full control)
6. Klik **"Generate token"**
7. **COPY TOKEN!** (hanya muncul 1x)

### Step 2: Push dengan Token
```powershell
cd "d:\bot musik\github-upload"

# Format: https://TOKEN@github.com/USERNAME/REPO.git
# Ganti YOUR_TOKEN dengan token yang di-copy
git remote set-url origin https://YOUR_TOKEN@github.com/Botbynetz/univbot-music.git

# Push
git push -u origin main
```

**Contoh:**
Jika token: `ghp_abc123XYZ...`
```powershell
git remote set-url origin https://ghp_abc123XYZ@github.com/Botbynetz/univbot-music.git
git push -u origin main
```

---

## ✅ **Cara 2: GitHub CLI (gh)**

### Install GitHub CLI
Download: https://cli.github.com/

### Login & Push
```powershell
# Login
gh auth login

# Push
cd "d:\bot musik\github-upload"
git push -u origin main
```

---

## ✅ **Cara 3: Push Manual via GitHub Web**

### Jika cara di atas ribet:
1. Buka: https://github.com/Botbynetz/univbot-music
2. Klik **"Add file"** → **"Upload files"**
3. Drag & drop semua file dari `d:\bot musik\github-upload\`
4. Commit message: "Add playlist viewer mini app"
5. Klik **"Commit changes"**

---

## 🎯 **Setelah Berhasil Push:**

### Aktifkan GitHub Pages:
1. Buka: https://github.com/Botbynetz/univbot-music/settings/pages
2. **Source:** Deploy from a branch
3. **Branch:** `main` → folder `/ (root)`
4. Klik **Save**
5. Tunggu 2-3 menit

### URL Mini App:
```
https://botbynetz.github.io/univbot-music/playlist_viewer.html
```

### Update Bot .env:
```env
MINI_APP_URL=https://botbynetz.github.io/univbot-music/playlist_viewer.html
```

### Restart Bot:
```powershell
cd "d:\bot musik"
Remove-Item Env:\TELEGRAM_BOT_TOKEN -ErrorAction SilentlyContinue
python new_interactive_bot.py
```

---

## 📝 **Quick Command (Setelah Dapat Token):**

```powershell
cd "d:\bot musik\github-upload"
git remote set-url origin https://YOUR_TOKEN_HERE@github.com/Botbynetz/univbot-music.git
git push -u origin main
```

Ganti `YOUR_TOKEN_HERE` dengan token dari GitHub!

---

**Pilih cara mana yang paling mudah buat kamu!** 🚀
