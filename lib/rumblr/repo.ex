defmodule Rumblr.Repo do
  # use Ecto.Repo, otp_app: :rumblr

  @moduledoc """
  In memory repository
  """

  def all(Rumblr.User) do
    [
      %Rumblr.User{id: "1", name: "Hafiz", username: "baba", password: "ba"},
      %Rumblr.User{id: "2", name: "Atiqah", username: "mami", password: "mi"},
      %Rumblr.User{id: "3", name: "Wafa'", username: "ciku", password: "fu"}
    ]
  end

  def all(__module__), do: []

  def get(module, id) do
    Enum.find(all(module), fn map -> map.id == id end)
  end

  def get_by(module, params) do
    Enum.find(all(module), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end)
  end
end
