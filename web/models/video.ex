defmodule Rumblr.Video do
  use Rumblr.Web, :model

  schema "videos" do
    field :url, :string
    field :title, :string
    field :description, :string
    belongs_to :user, Rumblr.User
    belongs_to :category, Rumblr.Category

    timestamps
  end

  @required_fields ~w(url title description)
  @optional_fields ~w(category_id)

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
