# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :heroku_test_02,
  ecto_repos: [HerokuTest02.Repo]

# Configures the endpoint
config :heroku_test_02, HerokuTest02.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Jt8xo3o4KmttU3tstRbsu5+zNnZhNMaaOJXmr2USggSSwZjZbtRAGz1EwfGzcjvZ",
  render_errors: [view: HerokuTest02.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HerokuTest02.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
