require "sinatra"
require "sinatra/activerecord"
require "./models"

configure :development do
  set :database, "sqlite3:heroku-test.sqlite3"
end

get "/" do
  @users = User.all
  erb :index
end

get "/users/create" do
  User.create(
    first_name: "Orlando",
    last_name: "Caraballo",
    birthday: "12/1/1983"
  )
end