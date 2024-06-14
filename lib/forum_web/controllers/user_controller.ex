defmodule ForumWeb.UserController do
  use ForumWeb, :controller

  def users_html(conn, _params) do
    users = [
      %{ id: 1, name: "Kyle", email: "kyle@gmail.com"},
      %{ id: 2, name: "Bob", email: "bob@gmail.com"}
    ]
    IO.puts("Users html controller func hit!")
    render(conn, :users, users: users, layout: false)
  end

  def users_json(conn, _params) do
    users = [
      %{ id: 1, name: "Kyle", email: "kyle@gmail.com"},
      %{ id: 2, name: "Bob", email: "bob@gmail.com"}
    ]
    IO.puts("Users json controller func hit!")
    json(conn, %{users: users})
  end
end
