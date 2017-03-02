use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :heroku_test_02, HerokuTest02.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :heroku_test_02, HerokuTest02.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "heroku_test_02_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
