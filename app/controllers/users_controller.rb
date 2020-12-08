class UsersController < ApplicationController
    get '/login' do
        erb :login
    end


    post '/login' do
        @user = User.find_by(email: params[:email])

        if @user && @user.authenticate(params[:password]) 
            session[:user_id] = @user.id 
            puts session
            redirect "/users/#{@user.id}"
        else
            flash[:message] = "The email and/or password entered was not a match. Please try again."
            redirect '/login'
        end
    end


    get '/signup' do
        erb :signup
    end


    post '/signup' do
        if params[:name] != "" && params[:email] != "" && params[:password] != "" 
            @user = User.create(params)
            session[:user_id] = @user.id
            flash[:message] = "You have successfully created an account."
            redirect to "/users/#{@user.id}"
        else
            flash[:errors] = "Invalid credentials. Please try again."
            redirect to '/signup'
        end
    end



    get '/users/:id' do
        @user = User.find_by(id: params[:id])
        erb :'/users/show'
    end

    get '/logout' do
        session.clear
        redirect '/'
    end

end 