defmodule ElixirApi.HelloView do
  use ElixirApi.Web, :view

  def render("index.json", %{hello: hello}) do
    hello
  end
end
