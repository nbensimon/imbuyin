defmodule Imbuyin.Categories do
  use Ecto.Schema
  import Ecto.Changeset

  schema "categories" do
    # Unique, autoincrementing ID?
    # Name of the category
    field :category_name, :string
  end
end
