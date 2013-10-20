defmodule MacroToolsFacts do
  use Amrita.Sweet

  import MacroTools

  fact "macro_fn through fn" do
    mac_fn = fn(form) -> quote do
                           [unquote(form), unquote(form)]
                         end
             end

    mac_fn.(10) |> [10, 10]
  end

end
