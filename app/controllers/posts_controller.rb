class PostsController < ApplicationController
     # GET /posts
    def index
        posts = Post.all
        render json: posts
    end

    
end