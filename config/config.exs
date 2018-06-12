# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tictactoe,
  ecto_repos: [Tictactoe.Repo]

# Configures the endpoint
config :tictactoe, TictactoeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Wnd7bfx+doBGWgeDM4MPWI28LhhHwC+kSoBvfe+OtyW1XaC7xBp/+uXubFv34OMX",
  render_errors: [view: TictactoeWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Tictactoe.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
