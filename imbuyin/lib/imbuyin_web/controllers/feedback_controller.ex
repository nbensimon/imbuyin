defmodule ImbuyinWeb.FeedbackController do
  @moduledoc """
  Controllers are where the application gathers the requisite data to present to views, which
  in turn prepare the data for presentation. Here, we can short-circuit this process since
  the backend isn't responsible for rendering any HTML. We can directly return JSON responses
  from the controller.

  Analogous to the views module's feedback method
  """
  use ImbuyinWeb, :controller
  require Ecto.Query

  # Pattern match against params, return stuff in JSON
  # `GET` method?
  def show(conn, %{email: email}) do
    # Search by email/uid passed in
    user = Imbuyin.User |> Ecto.Query.where(email: ^email)
    # Get the average number of stars
    # json conn, %{"test": "data"}
  end

  # blank message body? dbl check this is right 
  def post(conn, []) do
    # If create_feedback(request.body) is False, return bad input HTTP code/
    put_status(conn, 400)
    |> render(ErrorView, "400.json")
  end

  def post(conn, params) do
    IO.puts("Received #{params} as input")
    conn
    |> json(%{"message": "Thanks for your feedback"})
  end

  def create(conn, params) do
    # get user from email/uid passed in
    # update feeback by number of stars
    :not_implemented
  end
end
