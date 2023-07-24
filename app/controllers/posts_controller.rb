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

      # POST /posts
    def create
        post = Post.new(post_params)
        if post.save
        render json: post, status: :created
        else
        render json: { error: 'Failed to create post.' }, status: :unprocessable_entity
        end
    end

      # DELETE /posts/:id
    def destroy
        post = Post.find(params[:id])
        if post.destroy
        head :no_content
        else
        render json: { error: 'Failed to delete post.' }, status: :unprocessable_entity
        end
    end

    private

    def post_params
        params.require(:post).permit(:title, :content, :user_id)
    end

end