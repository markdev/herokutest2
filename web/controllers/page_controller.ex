defmodule HerokuTest02.PageController do
  use HerokuTest02.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
