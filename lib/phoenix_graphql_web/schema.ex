defmodule PhoenixGraphqlWeb.Schema do
  use(Absinthe.Schema)
  import_types(PhoenixGraphqlWeb.Schema.ContentTypes)

  alias PhoenixGraphqlWeb.Resolvers

  query do
    @desc "Get all users"
    field :users, list_of(:user) do
      resolve(&Resolvers.Link.list_users/3)
    end
  end
end
