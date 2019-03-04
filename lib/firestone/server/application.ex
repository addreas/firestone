defmodule Firestone.Server.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Starts a worker by calling: Firestone.Worker.start_link(arg)
      # {Firestone.Worker, arg},
      Firestone.Server.State
    ]

    children =
      if Application.get_env(:firestone, :enable_cowboy) do
        [
          {Plug.Cowboy, scheme: :http, plug: Firestone.Server.Plug, options: [port: 8080]}
          | children
        ]
      else
        children
      end

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Firestone.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
