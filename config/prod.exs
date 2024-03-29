use Mix.Config

config :wallet, Wallet.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [host: "immense-garden-64839.herokuapp.com", port: 443],
  cache_static_manifest: "priv/static/manifest.json",
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  secret_key_base: System.get_env("SECRET_KEY_BASE")

# Do not print debug messages in production
config :logger, level: :info

# Database configuration
config :wallet, Wallet.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
  ssl: true
