require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/umbrella") do
  erb(:umbrella_form)
end

post("/process_umbrella") do
  @user_location=params.fetch("user_loc")

  url_encoded_string = @user_location.gsub(" ", "+")

  erb(:umbrella_results)
end
