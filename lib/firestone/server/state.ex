defmodule Firestone.Server.State do
  use Agent

  def start_link(_) do
    Agent.start_link(fn -> [] end, name: __MODULE__)
  end

  @doc "Gets the entire list of states"
  def get do
    Agent.get(__MODULE__, fn state -> state end)
  end

  @doc "Creates a new list of states with an initial game, returns the new states"
  def update :create_game do
    :ok = Agent.update(__MODULE__, fn _ -> [Firestone.create_game] end)

    get()
  end

  @doc "Runs end_turn and prepends it to the list of states, returns the new states"
  def update :end_turn do
    :ok = Agent.update(__MODULE__,
      fn [state | states] ->
        [Firestone.end_turn(state) | [state | states]]
      end)

    get()
  end

  @doc "Run play_spell and prepends it to the list of states, returns the new states"
  def update :play_spell do
    :ok = Agent.update(__MODULE__,
        fn [state | states] ->
          [Firestone.play_spell(state) | [state | states]]
        end)

    get()
  end

  @doc "Run play_minion and prepends it to the list of states, returns the new states"
  def update :play_minion do
    :ok = Agent.update(__MODULE__,
        fn [state | states] ->
          [Firestone.play_minion(state) | [state | states]]
        end)

    get()
  end
end
