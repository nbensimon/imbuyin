defmodule Imbuyin.Date do
  use Ecto.Schema
  import Ecto.Changeset

  #@primary_key = {:id, autogenerate: true}


  schema "date" do
    # foreign key to User table, on delete cascade
    field :user, :string
    # TODO may need to be lat/long for integration with maps apps (Apple/Google)
    field :location, :string
    # TODO UTC based timezone - frontend should translate to local time
    field :time, :string
    # TODO whether the date has been 'matched' - boolean, default false
    field :matched, :boolean
    # category - category of dates - will probably need to reference a select
    # number of categories from another table

    timestamps()
  end

  @doc false
  def changeset(%Date{} = user, attrs) do
    user
    |> cast(attrs, [:email, :gender, :age, :about])
    |> validate_required([:email, :gender, :age])
  end
end

# Replicating:
# class Date(models.Model):
# 	user = models.ForeignKey(User, on_delete=models.CASCADE, 
# 		default='test@test.com')
# 	where = models.TextField()
# 	when = models.DateTimeField('date created')
# 	matched = models.BooleanField(default=False)
# 	category = models.CharField(max_length=50, default='General')
# 	imbuyin_value = models.DecimalField(max_digits=8, decimal_places = 2, default='0.00')
# 	interested_users = models.CharField(max_length=1000, default='')
# 	confirmed_user = models.CharField(max_length=50, default='')
# 
