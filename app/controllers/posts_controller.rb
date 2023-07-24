class PostsController < ApplicationController
     # GET /posts
    def index
        posts = Post.all
        render json: posts
    end

     # GET /posts/:id
    def show
        post = Post.find(params[:id])
        render json: post
    end

    
end