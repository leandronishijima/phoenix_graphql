defmodule PhoenixGraphqlWeb.Router do
  use PhoenixGraphqlWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: PhoenixGraphqlWeb.Schema,
      json_codec: Jason

    forward "/", Absinthe.Plug, schema: PhoenixGraphqlWeb.Schema, json_codec: Jason
  end
end
