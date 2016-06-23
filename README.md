# rpgmaker-mv-player

This sets up NW.js to play [RPGMaker MV]-based games.

Note: This forwards X11 and PulseAudio; it's not meant for containment, just
convenience.

[RPGMaker MV]: http://www.rpgmakerweb.com/products/programs/rpg-maker-mv

### Installation

```sh
docker run --rm -v /usr/local/bin mook/rpgmaker-mv-player install
```

To install into a different path, use
```sh
docker run --rm -v /install-directory:/usr/local/bin mook/rpgmaker-mv-player install
```

### Usage

1. Go to the RPGMaker game directory
   (This should contain `www` and `package.json`)
2. Run `rpgmaker-mv-player`

