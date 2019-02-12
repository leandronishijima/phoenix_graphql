defmodule PhoenixGraphqlWeb.Resolvers.Link do
  def list_users(_parent, _args, _resolution) do
    {:ok, PhoenixGraphql.Link.list_users()}
  end

  def find_user(_parent, %{first_name: first_name}, _resolution) do
    case PhoenixGraphql.Link.get_user_by_first_name!(first_name) do
      nil ->
        {:error, "User with name: #{first_name} not found"}

      user ->
        {:ok, user}
    end
  end
end
