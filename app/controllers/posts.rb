get '/posts/:id' do
  @post = Post.find(params[:id])

  erb :post
end

get '/posts/create/' do

  erb :create
end

post '/posts/create/' do
  binding.pry
  erb :index
end

