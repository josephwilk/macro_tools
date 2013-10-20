defmodule MacroToolsTest do
  use Amrita.Sweet

  fact "the truth" do
    true |> truthy
  end
end
