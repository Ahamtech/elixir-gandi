defmodule Gandi.Mixfile do
  use Mix.Project

  def project do
    [app: :gandi,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps,
     package: package(),
     description: desc()
   ]
  end

  def application do
    [applications: [:logger, :httpoison]]
  end
  
  def desc() do 
    """
    Elixir Wrapper for Gandi Infra

    """
  end

  defp deps do
    [{:erlsom, "~> 1.4"},
   {:xmlrpc, "~> 1.0"},
   {:ex_doc, ">= 0.0.0", only: :dev},
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
