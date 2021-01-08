# A basic browser app built with [SwiftWasm](https://swiftwasm.org)

[`carton`](https://carton.dev) is the recommended way to build and run browser apps built with
SwiftWasm. Follow these steps to get started, where you'll install `carton` via
[Homebrew](https://brew.sh/) on macOS (unfortunately you'll have to build it manually on Linux).
After you already have Homebrew installed, just these three steps will get you up and running:

1. Install `carton`:

```
brew install swiftwasm/tap/carton
```

If you had `carton` installed before this, make sure you have version 0.9.0 or greater:

```
carton --version
```

2. Build the project and start the development server, `carton dev` can be kept running
   during development:

```
carton dev
```

3. After the build succeeds, a page on a development server will open automatically, or you can
   navigate to [http://127.0.0.1:8080/](http://127.0.0.1:8080/) in your browser manually to see the
   app running. You can edit the app source code in your favorite editor and save it, `carton` will
   immediately rebuild the app and reload all browser tabs that have the app open.

## Deployment

You can easily deploy SwiftWasm apps to [GitHub Pages](https://pages.github.com). This repository
is already set up to do so. If you have GitHub Actions enabled, it will push successful builds to
the `gh-pages` branch on every commit. You only need [to enable GitHub Pages in settings of your
repository](https://docs.github.com/en/free-pro-team@latest/github/working-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site#choosing-a-publishing-source) and select `gh-pages` branch as your publishing source.

You can also deploy the app to any other CDN or hosting that can serve static files. Just run
`carton bundle` in the root directory of this repository clone. This will create a `Bundle`
directory that contains everything you need for the app to work. Then copy the contents of that
directory to wherever you'd like to host it.
