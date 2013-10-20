defmodule MacroToolsTest do
  use Amrita.Sweet

  fact "macrofn" do
    mac_fn = (macrofn form -> quote, do: [unquote(form), unquote(form)])

    mac_fn(10) == [10, 10]
  end

end
