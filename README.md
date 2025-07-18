# Twemoji COLRv1 Emoji Font

This repo is intended to document the build process (and host the output of) the COLRv1 version of Twemoji.

Inspired by the SVG-OpenType version hosted by [13rac1 here](https://github.com/13rac1/twemoji-color-font/tree/main)!

## Dependencies

This requires installation of Google's `nanoemoji`. You can install it by running `pip install nanoemoji`.

**Note:** It seems that nanoemoji isn't intended to run in a virtual environment (or perhaps my understanding of virtual environments is lacking, I don't use python much :p )

If you've installed nanoemoji in a virtual environment, you will probably have to copy over the `nanoemoji` and `picosvg` files into your `/bin` directory to get it to work.

Additionally, you will have to install `ninja-build` from your distribution's package manager.

(If anyone knows how to correctly get it working in a virtual environment, please do submit a PR updating these instructions!)

## Building

So long as you have the dependencies, simply running `build.sh` on a Linux install of your choice should begin the build process.

Picosvg will then begin iterating through the SVGs present within the assets folder; *Depending on your system, this could very well take a fair bit of time.*

The process will then hang on the last two operations. Rest assured, the build process is continuing. This bit just seems to take a minute is all.

The output file will then be present within the newly generated `build/` folder, as `Twemoji_COLRv1-{ver}.ttf`, with `{ver}` representing the Unicode version specified by the releases page of jdecked's [Twemoji Repo](https://github.com/jdecked/twemoji).

## Usage

### KDE Plasma 6 and Above

On KDE Plasma based systems, you'll have to disable the use of any other emoji fonts. This can be done as follows:

1. Install the font
2. Open System Settings
3. Head to `Font Management`
4. Search for `Noto Color Emoji` (this is merely the default; **if you have any emoji fonts, you will have to find them too!**)
5. Right click > Disable
6. Technically optional, but restarting the system is recommended. Font changes require application restarts to show up, and a system restart just sorta makes it easier for you.

Note: It's possible you can set a default without disabling an old font outright. I'm not 100% sure on how to do this though.
