defmodule Facts.MixProject do
  use Mix.Project

  def project do
    [
      app: :facts,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      releases: releases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Facts, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:req, "~> 0.5.15"},
      {:burrito, "~> 1.4.0"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  def releases do
    [
      facts: [
	steps: [:assemble, &Burrito.wrap/1],
	burrito: [
	  main_module: Facts,
          targets: [
            macos: [os: :darwin, cpu: :x86_64],
            linux: [os: :linux, cpu: :x86_64],
          ],
	  debug: Mix.env() != :prod # Don't run debug for releases
	]
      ]
    ]
  end
end
