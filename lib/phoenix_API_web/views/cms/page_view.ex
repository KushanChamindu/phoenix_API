defmodule Phoenix_APIWeb.CMS.PageView do
  use Phoenix_APIWeb, :view

  alias Phoenix_API.CMS
  def author_name(%CMS.Page{author: author}) do
    author.user.name
  end
end
