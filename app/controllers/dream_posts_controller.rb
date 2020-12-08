class DreamPostsController < ApplicationController
    
    
    get '/dream_posts' do
        @dream_posts = DreamPost.all
    
        erb :'/dream_posts/index'
    end


    get '/dream_posts/new' do
       erb :'/dream_posts/new'
    end


    post "/dream_posts" do
        if !logged_in?
            redirect '/'
        end

        if params[:content] != ""
            flash[:message] = "Dream post successfully created."
            @dream_post = DreamPost.create(content: params[:content], user_id: current_user.id)
            redirect "/dream_posts/#{@dream_post.id}"
        else
            flash[:message] = "Something went wrong."
            redirect '/dream_posts/new'
        end
    end


    get '/dream_posts/:id' do
        @dream_post = DreamPost.find(params[:id])
        erb :'/dream_posts/show'
    end



    get '/dream_posts/:id/edit' do
        set_dream_post
        if logged_in?
            if @dream_post.user == current_user
                erb :'/dream_posts/edit'
            else
                redirect "/users#{current_user.id}"
            end
        else
            redirect '/'
        end
    end


    patch "/dream_posts/:id" do 
        set_dream_post

        if logged_in?
            if @dream_post.user == current_user && params[:content] != ""
                @dream_post.update({content: params[:content]})
                redirect "/dream_posts/#{@dream_post.id}"
            else
                redirect "/users/#{current_user.id}"
            end
        else
            redirect '/'
        end
    end




    delete '/dream_posts/:id' do
        set_dream_post
        if authorized_to_edit?(@dream_post)
            @dream_post.destroy
            redirect '/dream_posts'
        else
            redirect '/dream_posts'
        end
    end

    private
    def set_dream_post
        @dream_post = DreamPost.find(params[:id])
    end


end