# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :imbuyin,
  ecto_repos: [Imbuyin.Repo]

# Configures the endpoint
config :imbuyin, ImbuyinWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0MJC8rGZDkLyfVy97zfhXmq0gmv6KdBid6lUZuwoqnrXUqw9jcTsxHcQY2fEEBOG",
  render_errors: [view: ImbuyinWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Imbuyin.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
