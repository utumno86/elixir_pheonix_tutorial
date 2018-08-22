defmodule Discuss.CommentsChannel do
  use Discuss.Web, :channel
  alias Discuss.Topic

  def join("comments:" <> topic_id, _params, socket) do
    topic_id = String.to_integer(topic_id)
    topic = Repo.get(Topic, topic_id)

    {:ok, %{}, assign(socket, :topic, topic)}
  end

  def handle_in(name, %{"content" => content}, socket) do
    topic = socket.assigns.topic

    {:reply, :ok, socket}
  end
end