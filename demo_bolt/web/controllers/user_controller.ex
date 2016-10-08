defmodule DemoBolt.UserController do
  use DemoBolt.Web, :controller

  alias Bolt.Sips, as: Bolt

  def index(conn, _params) do
  cypher = "MATCH (user:User) RETURN user.email LIMIT 10"
  data = Bolt.query!(Bolt.conn, cypher)
  render conn, "index.html"
  #json conn, data
  end
  
end
