# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :rumble,
  ecto_repos: [Rumble.Repo]

# Configures the endpoint
config :rumble, RumbleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "X4VAyE/tZjgxL6IYomuf9Pau7njJ00bogdD3qD60m27EXLCJ5Y1xB6KucgcPlj9o",
  render_errors: [view: RumbleWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Rumble.PubSub,
  live_view: [signing_salt: "EzM/ora3"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
