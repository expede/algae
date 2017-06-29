defmodule Algae.Mixfile do
  use Mix.Project

  def project do
    [app:     :algae,
     name:    "Algae",

     description: "Bootstrapped algebraic data types for Elixir",
     version: "0.12.2",
     elixir:  "~> 1.4",

     package: [
       maintainers: ["Brooklyn Zelenka"],
       licenses:    ["MIT"],
       links:       %{"GitHub" => "https://github.com/expede/algae"}
     ],

     source_url:   "https://github.com/expede/algae",
     homepage_url: "https://github.com/expede/algae",

     aliases: ["quality": ["test", "credo --strict"]],

     deps: [
       {:credo,    "~> 0.5",  only: [:dev, :test]},

       {:dialyxir, "~> 0.5",  only: :dev},
       {:earmark,  "~> 1.2",  only: :dev},
       {:ex_doc,   "~> 0.16", only: :dev},

       {:inch_ex,  "~> 0.5",  only: [:dev, :docs, :test]},

       {:quark, "~> 2.3"}
     ],

     docs: [
       extras: ["README.md"],
       logo: "./brand/logo.png",
       main: "readme"
     ]
    ]
  end
end
