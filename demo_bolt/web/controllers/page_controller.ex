defmodule DemoBolt.PageController do
  use DemoBolt.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
