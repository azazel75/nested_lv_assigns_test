# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :nested_assigns, NestedAssignsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "cg+fbFm35XCS+9ZoS9/bvEh/Zw7aq3UH5bPJzdS0egmojkN6CR7T7qVX2FgsfjcH",
  render_errors: [view: NestedAssignsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: NestedAssigns.PubSub,
  live_view: [signing_salt: "1NJwctLM"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
