defmodule Dictionary.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      Dictionary.WordList
    ]

    opts = [strategy: :one_for_one, name: Dictionary.Supervisor]

    Supervisor.start_link(children, opts)
  end
end
