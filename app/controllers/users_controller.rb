class UsersController < ApplicationController
    # GET /users

    def index
        users = User.all
        render json: users
    end

   # GET /users/:id
    def show
        user = User.find(params[:id])
        render json: user
    end

    #POST/users
    def create
        user = User.new(user_params)
        if user.save
          render json: user, status: :created
        else
          render json: { error: 'Failed to create user.' }, status: :unprocessable_entity
        end
    end
end
