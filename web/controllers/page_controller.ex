
defmodule Rumblr.PageController do
  use Rumblr.Web, :controller

  def home(conn, _params) do
    render conn, "home.html"
  end
end
