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

get '/sing/song/?:line?' do |line|
  @song = %Q(Start spreading the news
  I am leaving today
  I want to be a part of it
  New York, New York

  These vagabond shoes
  Are longing to stray
  Right through the very heart of it
  New York, New York

  I want to wake up in a city
  That doesn't sleep
  And find I'm king of the hill
  Top of the heap)
  unless n.nil?
    @song = @song.split("\n")[n.to_i].to_s
  end
  erb :show
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

get '/:user/status/:id' do
  students = %w(James Matt Seth Kurt Ryder)
  erb :index, locals: {full_name: students[params['id'].to_i]}
end
