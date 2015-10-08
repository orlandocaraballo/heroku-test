require "sinatra"
require "sinatra/activerecord"
require "./models"

configure :development do
  set :database, "sqlite3:heroku-test.sqlite3"
end

get "/" do
  "Welcome to my site on the web bros!"
end

get "/users" do
  @users = User.all
  erb :index
end

get "/users/new" do
  @user = User.create(
    first_name: "Orlando-#{Time.now}",
    last_name: "Caraballo",
    birthday: "12/1/1983"
  )

  "New user has been created."
end