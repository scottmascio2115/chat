defmodule Chat.RoomChannel do
  use Chat.Web, :channel

  alias Chat.Persence

  def join("room:lobby", _params, socket) do
    send self(), :after_join
    {:ok, socket}
  end

  def join(_other, _params, socket) do
    {:error, "Room does not exist."}
  end
end
