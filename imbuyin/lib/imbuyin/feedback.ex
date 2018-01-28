defmodule Imbuyin.Feedback do
  use Ecto.Schema
  import Ecto.Changeset


  schema "feedback" do
    # TODO: foreign key to User table, on delete cascade
    field :user, :string
    # TODO: SmallIntegerField
    field :stars, :integer
  end

# class Feedback(models.Model):
# 	user = models.ForeignKey(User, on_delete=models.CASCADE,
#       default='test@test.com')
# 	stars = models.SmallIntegerField()
end
