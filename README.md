# Forum

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Creating a User
```
curl -X POST http://localhost:4000/api/users -H "Content-Type: application/json" -d '{"user": {"name": "kyle", "email": "kyle@gmail.com"}}'

> {"data":{"id":1,"title":"hello world","body":"what a beautiful day today!"}}
```

## Creating a Post
```
curl -X POST http://localhost:4000/api/posts -H "Content-Type: application/json" -d '{"post": {"user_id": 1, "title": "hello world", "body": "what a beautiful day today!"}}'

> {"data":{"id":1,"title":"hello world","body":"what a beautiful day today!"}}
```

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
