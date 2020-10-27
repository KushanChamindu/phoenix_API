defmodule Phoenix_APIWeb.PageController do
  use Phoenix_APIWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
