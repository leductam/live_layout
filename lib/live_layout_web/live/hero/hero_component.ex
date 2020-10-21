defmodule LiveLayoutWeb.HeroComponent do
  use LiveLayoutWeb, :live_component

  @impl true
  def mount(socket) do
    socket = assign(socket, action: "hero")
    {:ok, socket}
  end

  @impl true
  def handle_event("to_tablive", _params, socket) do
    socket = assign(socket, action: "tablive")
    {:noreply, socket}
  end

  @impl true
  def handle_event("back_hero", _params, socket) do
    socket = assign(socket, action: "hero")
    {:noreply, socket}
  end
end
