get '/new' do
  erb :"users/new"
end

get '/login' do
  erb :"users/login"
end

post '/new' do
  @user = User.new(params[:email])
  @user.password = params[:password]

  if @user.valid?
    @user.save!
    session[:user_id] = user.id
    redirect '/'
  else
    status 422
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end

post '/login' do
  @user = User.authenticate(params[:user][:email], params[:password])
  if @user
    session[:user_id] = @user.id
    redirect '/users/show/#{@user.id}'
  else
    status 422
    @errors = ["Invalid login. Please try again."]
    erb :'users/login'
  end
end
