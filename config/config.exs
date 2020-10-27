# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_API,
  ecto_repos: [Phoenix_API.Repo]

# Configures the endpoint
config :phoenix_API, Phoenix_APIWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zwyZaMviyced/2QhgUnX0+FIbnvRYqIuUK4gISM2stiDQz0QOYkHkXDg+g+aZXVK",
  render_errors: [view: Phoenix_APIWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Phoenix_API.PubSub,
  live_view: [signing_salt: "7OWgidbi"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
