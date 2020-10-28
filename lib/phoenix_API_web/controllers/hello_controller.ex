defmodule Phoenix_APIWeb.HelloController do
  use Phoenix_APIWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"message" => message}) do
    # IO.inspect conn
    # json(conn, %{message: message})
    #     html(conn, """
    #     <html>
    #       <head>
    #          <title>Passing a Messenger</title>
    #       </head>
    #       <body>
    #         <p>From messenger #{Plug.HTML.html_escape(message)}</p>
    #       </body>
    #     </html>
    #    """)
    conn
    |> put_layout("admin.html")
    |> render("show.html", message: message)
  end
  def redirect_test(conn, _params) do
    redirect(conn, to: "/")
  end
end
