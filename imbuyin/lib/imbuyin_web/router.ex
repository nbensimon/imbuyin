defmodule ImbuyinWeb.Router do
  use ImbuyinWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ImbuyinWeb do
    pipe_through :api

    # nested /api/date/
    resources "/date", DateController
    # /api/date/feedback/
    resources "/feedback", FeedbackController
    # /api/date/comments/
    resources "/comments", CommentController
  end

  scope "/health", ImbuyinWeb do
    get "/", HealthController, :index
  end
end
