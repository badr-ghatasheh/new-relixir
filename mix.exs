defmodule NewRelixir.Mixfile do
  use Mix.Project

  def project do
    [app: :new_relixir,
     name: "New Relixir",
     version: "0.1.0",
     elixir: "~> 1.2",
     description: "New Relic tracking for Elixir applications.",
     package: package,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     aliases: aliases,
     deps: deps]
  end

  def application do
    [mod: {NewRelixir, []},
     applications: [:logger, :lhttpc, :ecto, :phoenix]]
  end

  defp deps do
     [
      {:newrelic, "~> 0.1.0"},
      {:phoenix, "~> 1.2.1"},
      {:ecto, "~> 2.0.5"}
   ]
  end

  defp package do
    [maintainers: ["David Cuddeback"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/TheRealReal/new-relixir"}]
  end

  defp aliases do
    ["test": ["test --no-start"]]
  end
end
