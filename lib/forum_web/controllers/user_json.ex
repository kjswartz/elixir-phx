defmodule ForumWeb.UserJSON do
  alias Forum.Accounts.User
  alias ForumWeb.PostJSON

  @doc """
  Renders a list of users.
  """
  def index(%{users: users}) do
    %{data: for(user <- users, do: data(user))}
  end

  @doc """
  Renders a single user.
  """
  def show(%{user: user}) do
    %{
      data: Map.merge(
        data(user),
        %{posts: posts(user)}
      )
    }
  end

  defp data(%User{} = user) do
    %{
      id: user.id,
      name: user.name,
      email: user.email
    }
  end

  defp posts(%User{} = user) do
    Enum.map(user.posts, &PostJSON.data/1)
  end
end
