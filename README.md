# Facts

A simple CLI to test the waters with Elixir.

## Requirements

- [Elixir](https://elixir-lang.org/install.html) ~> 1.18.0
- [Zig](https://github.com/ziglang/zig/wiki/Install-Zig-from-a-Package-Manager)
  0.14.1 (for Burrito to roll a binary).
- [xz](https://tukaani.org/about.html) (for Burrito to compress
  artifacts)

## Setup

### Recommended

- [asdf](https://asdf-vm.com/guide/getting-started.html) to manage
  language versions. This repo is setup together with `.envrc` file to
  load/unload environment (i.e.: automagically update `$PATH` to load
  required language version).
- [direnv](https://direnv.net/) to manage environment via `.envrc`.

### Develop

1. Install required Elixir version (recommended using `asdf`).
2. Install `direnv` (if not installed).
3. `git clone git@github.com:magandrez/facts.git`
4. `cd` into the repo (run `direnv allow` if using `direnv`).
5. Ensure your environment is setup (check elixir version, run the
   `iex` REPL).
6. Download dependencies: `mix deps get`.
7. List of tasks can be checked with `mix help`.
To compile:

- Run `MIX_ENV=prod mix release`. Binary available under
  `./burrito_out/`.

To access the REPL:

- Run `mix app.start`.
