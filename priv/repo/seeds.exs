# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PhoenixGraphql.Repo.insert!(%PhoenixGraphql.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias PhoenixGraphql.News.Link
alias PhoenixGraphql.Link.User
alias PhoenixGraphql.Repo

%Link{url: "http://graphql.org/", description: "The Best Query Language"} |> Repo.insert!()
%Link{url: "http://dev.apollodata.com/", description: "Awesome GraphQL Client"} |> Repo.insert!()

%User{
  email: "leandro@eurekalabs.com.br",
  first_name: "Leandro",
  password_hash: "HAUjhsj2123123",
  role: "admin"
}
|> Repo.insert!()

%User{
  email: "admin@eurekalabs.com.br",
  first_name: "Admin",
  password_hash: "IOJIjAsd2",
  role: "admin"
}
|> Repo.insert!()
