get '/' do
  @posts = Post.all
  erb :index
end

get '/post/new' do 
	erb :new
end

get '/post/:id/edit' do
	@post = Post.find(params[:id])
	erb :edit
end

get 'post/:id' do
	@post = Post.find(params[:id])
	erb :show
end



#### POST Actions ####

post '/' do 
	Post.create(params[:post])
	redirect to '/'
end

post '/post/:id' do
	post = Post.find(params[:id])
	post.title = "#{params[:title]}"
	post.content = "#{params[:content]}"
	if post.save
			redirect to '/'
	else
		erb :edit
	end
end

post '/post/:id/delete' do
	post = Post.find(params[:id])
	post.destroy
	redirect to '/'
end

