defmodule NestedAssignsWeb.PageLiveChild do
  use NestedAssignsWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign_new(socket, :value, fn -> "value not found via 'assign_new'" end)}
  end

end
