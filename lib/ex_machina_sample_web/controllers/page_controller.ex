defmodule ExMachinaSampleWeb.PageController do
  use ExMachinaSampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
