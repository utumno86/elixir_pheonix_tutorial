defmodule Discuss.CommentsChannel do
  use Discuss.Web, :channel

  def join(name, _params, socket) do
    {:ok, %{hey: "there"}, socket}
  end

  def handle_in(name) do
    IO.puts("++++++")
    IO.puts(name)
    IO.inspect(message)
  end
end