defmodule PhoenixGraphqlWeb.Schema do
  use(Absinthe.Schema)
  import_types(Absinthe.Type.Custom)
  import_types(PhoenixGraphqlWeb.Schema.ContentTypes)

  alias PhoenixGraphqlWeb.Resolvers

  query do
    @desc "Get all users"
    field :users, list_of(:user) do
      resolve(&Resolvers.Link.list_users/3)
    end

    @desc "Get user by name"
    field :user, :user do
      arg(:first_name, non_null(:string))
      resolve(&Resolvers.Link.find_user/3)
    end
  end
end
