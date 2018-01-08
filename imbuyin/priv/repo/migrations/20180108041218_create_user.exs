defmodule Imbuyin.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:user) do
      add :email, :string
      add :gender, :string
      add :age, :integer
      add :about, :string

      timestamps()
    end

  end
end
