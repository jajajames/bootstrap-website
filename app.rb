require 'sinatra'

get '/hi' do
  erb :index
end

get '/current_time' do
  Time.now.to_s
end

get '/say/hello' do
  "<h1>Hello</h1>"
end

get '/say_hello_to/:first_name/?:last_name?' do |first_name, last_name|
  @name = [first_name, last_name].join(" ")
  @greeting = params["howdy"] ? "Howdy" : "Hi"
  erb :index
end

get '/our_class' do
  @greeting = "Hey hey"
  @name = %w(James Matt Seth Kurt Ryder).shuffle
  erb :index
end

post '/search' do
  starter = case params["search_engine"]
  when "google"
    "https://www.google.com/#q="
  when "bing"
    "http://www.bing.com/search?q="
  else
    "https://www.google.com/#q="
  end
  redirect starter + params['query']
end
