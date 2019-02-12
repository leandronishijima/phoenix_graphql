defmodule PhoenixGraphqlWeb.Schema.ContentTypes do
  use(Absinthe.Schema.Notation)

  object :user do
    field :email, :string
    field :first_name, :string
    field :password_hash, :string
    field :role, :string
  end
end
