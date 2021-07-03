# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :cz_user,
  ecto_repos: [CzUser.Repo]

config :cz_user, CzUser.Repo,
 migration_primary_key: [type: :binary_id],
 migration_foreign_key: [type: :binary_id]

# Configures the endpoint
config :cz_user, CzUserWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xaZ053Pf9uJcfei9KbaAqjJRWPxidsVCpxk/Bl8sG9QWFUUw3uJpYb9hPcbUQb28",
  render_errors: [view: CzUserWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: CzUser.PubSub,
  live_view: [signing_salt: "HyXuwcUr"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
