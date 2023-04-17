require './config/environment'
#this is the correct project file 
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    register Sinatra::Flash
    set :session_secret, "084ea53e97224cf564ea686b813c81131cfd4d6f7dc300dbf48097db816d53aa"
  end

  get '/' do
      erb :welcome
  end

  helpers do 

    def logged_in?
      !!current_user
    end


    def current_user
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end


    def authorized_to_edit?(dream_post)
      dream_post.user == current_user
    end
    
  end
end
