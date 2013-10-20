
defmodule MacroTools.Mixfile do
  use Mix.Project

  def project do
    [app: :amrita,
     version: "0.0.1",
     name: "MacroTools",
     source_url: "https://github.com/macro_tools",
     elixir: "~> 0.10.3",
     env: [test: [deps: deps],
           dev:  [deps: deps ++ dev_deps]],
     deps: deps]
  end

  def application do
    []
  end
  
  defp deps do
    []
  end

  defp dev_deps do
    [{:amrita, "~>0.2", github: "josephwilk/amrita"}]
  end
end
