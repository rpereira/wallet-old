# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :wallet,
  ecto_repos: [Wallet.Repo]

# Configures the endpoint
config :wallet, Wallet.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ytBIeS5L3aQVlP22KiKg9phdqZFI24U/nfLno5tBBWsyHfWMIxcwqGeUY7B4LXea",
  render_errors: [view: Wallet.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Wallet.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
