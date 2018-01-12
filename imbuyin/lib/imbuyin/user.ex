# auto-generated by Ecto
defmodule Imbuyin.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Imbuyin.User


  schema "user" do
    # default = ""
    field :about, :string
    # small int default 18
    field :age, :integer
    # primary key, default='test@test.com'
    field :email, :string
    # max length 1, char field
    field :gender, :string

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:email, :gender, :age, :about])
    |> validate_required([:email, :gender, :age, :about])
  end
end
