# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :price_genserver_proto,
  ecto_repos: [PriceGenserverProto.Repo]

# Configures the endpoint
config :price_genserver_proto, PriceGenserverProtoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gRdDuY1VWiWPLzfF2btjclzE3VqXWev2EGo6gY9ehSHP1fxDsN/3ObDAPa0euPKq",
  render_errors: [view: PriceGenserverProtoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PriceGenserverProto.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
