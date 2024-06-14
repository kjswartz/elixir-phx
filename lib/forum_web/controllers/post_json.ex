defmodule ForumWeb.PostJSON do
  alias Forum.Posts.Post

  @doc """
  Renders a list of posts.
  """
  def index(%{posts: posts}) do
    %{data: for(post <- posts, do: Map.merge(data(post), user_data(post)))}
  end

  @doc """
  Renders a single post.
  """
  def show(%{post: post}) do
    %{data: Map.merge(data(post), user_data(post))}
  end

  def data(%Post{} = post) do
    %{
      id: post.id,
      body: post.body,
      title: post.title
    }
  end

  defp user_data(%Post{} = post) do
    %{user_id: post.user_id}
  end
end
