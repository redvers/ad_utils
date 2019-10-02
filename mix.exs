defmodule AD.Utils.MixProject do
  use Mix.Project

  def project do
    [
      app: :ad_utils,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "ad_utils",
      package: package(),
      description: description()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp description() do
    "Simple helper functions to assist with working with Active Directory."
  end

  defp package() do
    %{
      name: "ad_utils",
      licenses: ["GPLv2"],
      links: %{"GitHub" => "https://github.com/redvers/ad_utils"}
    }
  end
end
