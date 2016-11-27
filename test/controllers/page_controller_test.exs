defmodule Rumblr.PageControllerTest do
  use Rumblr.ConnCase

  test "GET /" do
    conn = get build_conn(), "/"
    assert html_response(conn, 200) =~ "Welcome to Rumblr"
  end
end
