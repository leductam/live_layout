defmodule LiveLayoutWeb.HomeLive do
  use LiveLayoutWeb, :live_view

  def mount(_param, _session, socket) do
    {:ok, socket}
  end
end
