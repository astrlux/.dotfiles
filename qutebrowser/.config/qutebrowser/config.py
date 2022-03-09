from qutebrowser.api import interceptor


# Youtube Ad Blocker
# From: https://gist.github.com/Gavinok/f9c310a66576dc00329dd7bef2b122a1 

def filter_youtube_ads(info: interceptor.Request):
    """Block the given request if necessary."""
    url = info.request_url
    # Video ads
    if (
        url.host() == "www.youtube.com"
        and url.path() == "/get_video_info"
        and "&adformat=" in url.query()
    ):
        info.block()


interceptor.register(filter_youtube_ads)

# Fonts
c.fonts.default_family = "JetBrains Mono"

# Session save/restore
c.auto_save.session = True
c.auto_save.interval = 15000

# Search engines
c.url.searchengines = {
    'DEFAULT':  'https://google.com/search?hl=en&q={}',
    '!a':       'https://www.amazon.es/s?k={}',
    '!gh':      'https://github.com/search?o=desc&q={}&s=stars',
}

# Default page and new tab
c.url.default_page = "https://miniflux.fmartingr.dev"
c.url.start_pages = ["https://miniflux.fmartingr.dev"]

# Keybindings
config.bind("1pc", ":spawn --userscript ~/Code/qute-1password/qute_1pass.py --cache-session --auto-submit fill_credentials")
config.bind("1pu", ":spawn --userscript ~/Code/qute-1password/qute_1pass.py --cache-session --auto-submit fill_username")
config.bind("1pp", ":spawn --userscript ~/Code/qute-1password/qute_1pass.py --cache-session --auto-submit fill_password")
config.bind("1po", ":spawn --userscript ~/Code/qute-1password/qute_1pass.py --cache-session --auto-submit fill_totp")

# QT Configuration
# Enables Hardware Acceleration.
# ignore-gpu-blacklist should not be needed on all computers though, we may need to
# update this configuration once more computers use it.
c.qt.args = ["enable-gpu-rasterization", "ignore-gpu-blocklist", "enable-native-gpu-memory-buffers", "num-raster-threads=4"]

# Load autoconfig
config.load_autoconfig()
