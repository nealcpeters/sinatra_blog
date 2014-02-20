get '/posts/:id' do
  @post = Post.find(params[:id])

  erb :post
end

get '/posts/edit/:id' do
  @current = Post.find(params[:id])
  @tag = @current.tags.first
  erb :edit
end

post '/posts/edit/:id' do
  @post = Post.find(params[:id])
  params[:post].each {|k,v| @post.update(k => v) if !v.empty? }
  if (@tag = Tag.find_by(params[:tag]))
    @post.tags = [@tag]
  else
    @post.tags = [Tag.create(params[:tag])]
  end
  puts "great success"
  erb :success
end

get '/posts/delete/:id' do
  Post.find(params[:id]).destroy
  erb :delete
end

get '/posts/create/' do
  erb :create, layout: !request.xhr?
end

post '/posts/create/' do
  @post = Post.create(params[:post])
  if @post.id && !params[:tag][:name].empty?
    if (@tag = Tag.find_by(params[:tag]))
      @post.tags << @tag
    else
      @post.tags << Tag.create(params[:tag])
    end
    erb :success
  else
    erb :failure
  end
end

