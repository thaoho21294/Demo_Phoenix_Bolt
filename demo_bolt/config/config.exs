# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config


# Configures the endpoint
config :demo_bolt, DemoBolt.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "s7Hxh+sKc7B0KF+4DDIUaTp27ii+6X02WpJNtFKE48A8h8A1jGFLR+PI+pZWsTIg",
  render_errors: [view: DemoBolt.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DemoBolt.PubSub,
           adapter: Phoenix.PubSub.PG2]
config :bolt_sips, Bolt,
  url: "http://localhost:7474",
  basic_auth: [username: "neo4j", password: "neo4j123"],
  port: 7687,
  pool_size: 5,
  max_overflow: 1
# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
