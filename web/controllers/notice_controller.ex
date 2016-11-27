defmodule Rumblr.NoticeController do
  use Rumblr.Web, :controller

  def show(conn, _params) do
    render conn, "show.html", layout: false
  end

  def index(conn, _params) do
    render conn, "index.html", layout: false
  end
end
