defmodule TestliveviewWeb.ScreenLive do
  use TestliveviewWeb, :live_view

  def mount(_params, %{"user_id" => user_id}, socket) do
    {:ok, assign(socket, :count, 0)}
  end

  def render(assigns) do
    ~H"""
    Count: <%= @count %>
    <button phx-click="increase">increase</button>
    """
  end

  def handle_event("increase", _value, socket) do
    {:noreply, assign(socket, :count, socket.assigns.count + 1)}
  end
end