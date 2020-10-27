defmodule Phoenix_APIWeb.HelloController do
    use Phoenix_APIWeb, :controller
    def index(conn, _params) do
        render(conn, "index.html")
    end
    def show(conn,%{"message"=> message}) do
        render(conn, "show.html", message: message)
    end
end