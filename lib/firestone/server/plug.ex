defmodule Firestone.Server.Plug do
  use Plug.Router

  plug :match
  plug :dispatch

  def send_json(conn, data) do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Poison.encode!(data))
  end

  get "/createGame" do
    send_json(conn, "Welcome")
  end

  get "/playMinionCard" do
    send_json(conn, "Welcome")
  end

  get "/playSpellCard" do
    send_json(conn, "Welcome")
  end

  get "/endTurn" do
    send_json(conn, "Welcome")
  end

  match(_, do: send_resp(conn, 404, "Oops!"))
end
