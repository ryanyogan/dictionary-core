defmodule Dictionary.Application do
  use Application

  @impl true
  def start(_type, _args) do
    Dictionary.WordList.start_link()
  end
end
