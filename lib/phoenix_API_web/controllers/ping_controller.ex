defmodule Phoenix_APIWeb.PingController do
  use Phoenix_APIWeb, :controller

  def index(conn, _params) do
    conn
    |> send_resp(404, "pong")
  end
end
