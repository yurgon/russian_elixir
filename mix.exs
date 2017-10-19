defmodule Russian.Mixfile do
  use Mix.Project

  def project do
    [
      app: :russian,
      version: "0.2.0",
      elixir: "~> 1.5",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps,
      package: package,
      description: "Transliterate a string with russian characters"
   ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

  defp package do
    [maintainers: ["Anatoliy Kovalchuk"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/Kr00lIX/russian_elixir"},
     files: ~w(mix.exs README.md lib)]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:ex_spec, "~> 1.0", only: :test},
      {:ex_doc, "~> 0.8", only: :dev},
      {:earmark, ">= 0.0.0", only: :dev},
    ]
  end
end
