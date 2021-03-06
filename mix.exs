defmodule Mandrill.Mixfile do
  use Mix.Project

  def project do
    [ app: :mandrill,
      version: "0.3.0",
      elixir: "~> 1.0",
      description: description,
      package: package,
      deps: deps ]
  end

  def application do
    [ mod: { Mandrill, [] },
      applications: [:httpoison] ]
  end

  defp deps do
    [
      { :httpoison, "~> 0.3" },
      { :hackney, "~> 0.13.1" }, # not included in hex version of httpoison :(
      { :jsex, "~> 2.0.0" },
      { :ex_doc, "~> 0.6.1", only: :docs },
      { :earmark, "~> 0.1.12", only: :docs }
    ]
  end

  defp description do
    """
    A Mandrill wrapper for Elixir

    Requires an active account with Mandrill (http://mandrill.com).
    """
  end

  defp package do
    [ files: [ "lib", "mix.exs", "README.md", "LICENSE" ],
      contributors: [ "Shane Logsdon" ],
      licenses: [ "MIT" ],
      links: %{ "GitHub" => "https://github.com/slogsdon/mandrill-elixir" } ]
  end
end
