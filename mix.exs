defmodule Gandi.Mixfile do
  use Mix.Project

  def project do
    [app: :gandi,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :httpoison]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:erlsom, "~> 1.4"},
   {:xmlrpc, "~> 1.0"},
   {:httpoison, "~> 0.11.0"}
]
  end

  defp package do
    [
     name: :gandi,
     files: ["lib", "mix.exs", "README*", "LICENSE*"],
     maintainers: ["Mahesh Reddy","Anwesh Reddy","John Ankanna"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/ahamtech/elixir-gandi"}]
  end
end
