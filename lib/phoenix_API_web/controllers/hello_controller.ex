defmodule Phoenix_APIWeb.HelloController do
  use Phoenix_APIWeb, :controller
  alias Phoenix_API.Accounts

  def index(conn, _params) do
    # render(conn, "index.html")
    conn
    |> render("index.html", message: Accounts.get_user!(Plug.Conn.get_session(conn, :user_id)))
    # pages = [%{title: "foo"}, %{title: "bar"}]
    # render(conn, "index.json", pages: pages)
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
    conn
    |> put_flash(:info, "Welcome to Phoenix, from flash info!")
    |> put_flash(:error, "Let's pretend we have an error.")
    |>redirect(to: Routes.hello_path(conn, :index))
  end
end
