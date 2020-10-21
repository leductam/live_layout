# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :live_layout, LiveLayoutWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "FXXknvmmdfJXo4Jj3Xh/y587FED23GDQu4SqTOSZ11qAVnQtPmC2YL4P6j7WIJVa",
  render_errors: [view: LiveLayoutWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LiveLayout.PubSub,
  live_view: [signing_salt: "UB3a4Cko"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
