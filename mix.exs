defmodule Dictionary.MixProject do
  use Mix.Project

  def project do
    [
      app: :dictionary,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: description(),
      name: "Dictionary",
      source_url: "https://github.com/ryanyogan/dictionary-core"
    ]
  end

  def application do
    [
      mod: {Dictionary.Application, []},
      extra_applications: [:logger]
    ]
  end

  defp deps do
    []
  end

  defp description() do
    "This is the core of the dictionary service which has around 8k words"
  end

  defp package() do
    [
      name: "dictionary",
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/ryanyogan/dictionary-core"}
    ]
  end
end
