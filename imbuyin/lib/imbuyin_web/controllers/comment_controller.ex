defmodule Imbuyin.CommentController do
  @moduledoc """
  Controllers are where the application gathers the requisite data to present to views, which
  in turn prepare the data for presentation. Here, we can short-circuit this process since
  the backend isn't responsible for rendering any HTML. We can directly return JSON responses
  from the controller.
  """
  # Pattern match against params, return stuff in JSON
  def show(conn, _params) do
    :not_implemented
    # json conn, %{"test": "data"}
  end
end
