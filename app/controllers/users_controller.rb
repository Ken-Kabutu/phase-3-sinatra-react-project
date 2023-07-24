class UsersController < ApplicationController

    # GET /users
    def index
        users = User.all
        users.to_json
    end

   # GET /users/:id
    def show
        user = User.find(params[:id])
        user.to_json
    end

    #POST/users
    def create
        user = User.new(user_params)
        if user.save
            status 201
            user.to_json
        else
            status 422
            { error: "Failed to create user" }.to_json
        end
    end

     # PUT /users/:id
    def update
        user = User.find(params[:id])
        if user.update(user_params)
            user.to_json
        else
            status 422
            { error: "Failed to update user" }.to_json
        end
    end

      # DELETE /users/:id
    def destroy
        user = User.find(params[:id])
        if user.destroy
        head :no_content
        else
        render json: { error: 'Failed to delete user.' }, status: :unprocessable_entity
        end
    end

    private

    def user_params
      params.require(:user).permit(:name, :email, :password)
    end

end
