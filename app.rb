require "sinatra"


get "/cat" do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
