# homebrew-screenshat

To install [screenshat](https://github.com/adamwolf/screenshat) using Homebrew:

    brew tap adamwolf/screenshat
    brew install screenshat

You should then be able to get started with `screenshat --help`.

More details are available at [screenshat](https://github.com/adamwolf/issue-expander).

# Skipping ffmpeg

`screenshat` requires ffmpeg to create videos.  If you don't want Homebrew to install ffmpeg alongside `screenshat`, you can run

    brew install --without-ffmpeg screenshat

## Maintenance

This repository uses some GitHub workflows from Homebrew.  They're a little weird in that
instead of closing PRs, you need to label a PR as `pr-pull` and the workflow will do things
and then close it for you.

