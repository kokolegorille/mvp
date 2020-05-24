# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :mvp,
  ecto_repos: [Mvp.Repo]

# Configures the endpoint
config :mvp, MvpWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "lnakDeObdgSGFXM4hd21Yf5ehCweVwN7CtQ7ObkadoI+MYAUMnXYGzGXBknZn6ui",
  render_errors: [view: MvpWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Mvp.PubSub,
  live_view: [signing_salt: "J4Fvstla"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
