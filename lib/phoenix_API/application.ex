defmodule Phoenix_API.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Phoenix_API.Repo,
      # Start the Telemetry supervisor
      Phoenix_APIWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Phoenix_API.PubSub},
      # Start the Endpoint (http/https)
      Phoenix_APIWeb.Endpoint
      # Start a worker by calling: Phoenix_API.Worker.start_link(arg)
      # {Phoenix_API.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Phoenix_API.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    Phoenix_APIWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
