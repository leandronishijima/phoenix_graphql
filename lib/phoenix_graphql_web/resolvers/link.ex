defmodule PhoenixGraphqlWeb.Resolvers.Link do
  def list_users(_parent, _args, _resolution) do
    {:ok, PhoenixGraphql.Link.list_users()}
  end
end
