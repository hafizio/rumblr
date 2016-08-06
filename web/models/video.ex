defmodule Rumblr.Video do
  use Rumblr.Web, :model

  schema "videos" do
    field :url, :string
    field :title, :string
    field :description, :string
    belongs_to :user, Rumblr.User

    timestamps
  end

  @required_fields ~w(url title description)
  @optional_fields ~w()

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
