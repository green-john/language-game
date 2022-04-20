defmodule TestliveviewWeb.PageController do
  use TestliveviewWeb, :controller

  alias TestliveviewWeb.ScreenLive

  import Phoenix.LiveView.Controller

  def index(conn, _params) do
    live_render(
      conn,
      ScreenLive,
      session: %{
        "user_id" => "test_user"
      }
    )
  end
end
