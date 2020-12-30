defmodule Dictionary.WordList do
  use Agent
  @me __MODULE__

  def start_link(_opts) do
    Agent.start_link(&word_list/0, name: @me)
  end

  def word_list do
    Application.app_dir(:dictionary, "priv/static/words.txt")
    |> File.read!()
    |> String.split(~r/\n/)
  end

  def random_word() do
    Agent.get(@me, &Enum.random/1)
  end
end
