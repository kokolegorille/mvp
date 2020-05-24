# Mvp

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

# Description

MVP for testing textarea in live_view 0.13

# Steps to reproduce

Phoenix 1.5.3

```
$ mix phx.new mvp --live
$ cd mvp
$ mix ecto.create
$ mix phx.gen.live Blog Post posts content:text
$ mix ecto.migrate
```

* Update router and add posts routes
* Update layout to add posts menu
* Update post schema, :string -> :binary

```
$ iex -S mix.phx.server
```

* Navigate to localhost:4000/posts
* Create a new post
* Update this post
* Select all text, update is triggered...
