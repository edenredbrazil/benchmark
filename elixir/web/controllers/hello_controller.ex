defmodule ElixirApi.HelloController do
  use ElixirApi.Web, :controller

  alias ElixirApi.Hello

  def index(conn, _params) do
    render(conn, "index.json", hello: %{ hello: "world" })
  end

end
