# Music Bot Playlist Viewer

🎵 Telegram Mini App untuk melihat playlist musik yang disimpan

## Features
- ✨ Beautiful purple gradient design
- 📱 Responsive mobile-first interface
- 🔍 Search functionality
- 📊 Statistics (total songs, duration)
- ⚡ Fast & lightweight

## Preview
![Playlist Viewer](https://via.placeholder.com/400x800?text=Playlist+Viewer+Preview)

## Usage

This Mini App is designed to be integrated with Telegram Bot. It displays user playlists stored in JSON format.

### Integration

Add to your bot:
```python
from telegram import InlineKeyboardButton, WebAppInfo

keyboard = [[
    InlineKeyboardButton("🌐 Open Playlist", web_app=WebAppInfo(url="YOUR_GITHUB_PAGES_URL"))
]]
```

## Tech Stack
- Pure HTML/CSS/JavaScript
- Telegram Web App SDK
- No dependencies

## License
MIT

---

Made with ❤️ for music lovers
