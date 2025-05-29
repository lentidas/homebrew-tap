# [@lentidas](https://github.com/lentidas) Homebrew Tap

## What is Homebrew?

Homebrew is a package manager for macOS (or Linux), see more at https://brew.sh

## What is a Tap?

A third-party (in relation to Homebrew) repository providing installable packages (formulae) on macOS and Linux.

See more at https://docs.brew.sh/Taps

## How do I install packages from here?

```sh
brew install lentidas/tap/<formula>
```

You can also only add the tap which makes formulae within it available in search results (`brew search` output):

```sh
brew tap lentidas/tap
```

Note: to clone the tap via SSH you will need to use:

```sh
brew tap lentidas/tap https://github.com/lentidas/homebrew-tap
```

While you may search across taps, it is necessary to always use fully qualified name (incl. the `lentidas/tap/` prefix) when referring to formulae in external taps such as this one outside of search.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
