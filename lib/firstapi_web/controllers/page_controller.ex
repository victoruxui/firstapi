defmodule FirstapiWeb.PageController do
  use FirstapiWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    IO.puts("Users endpoint hits!")

    users = [
      %{id: 1, name: "Victor", email: "victor@mail.com"},
      %{id: 2, name: "Carl", email: "carl@mail.com"},
      %{id: 3, name: "Jhon", email: "jhon@mail.com"}
    ]

    json(conn, %{users: users})
  end
end
