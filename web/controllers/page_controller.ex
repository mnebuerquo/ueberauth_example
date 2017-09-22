defmodule UeberauthExample.PageController do
  @moduledoc """
  Static page controller
  """
  require Logger

  use UeberauthExample.Web, :controller

  def index(conn, _params) do
    #Logger.debug System.get_env("SECRET_KEY_BASE")
    render conn, "index.html", current_user: get_session(conn, :current_user)
  end
end
