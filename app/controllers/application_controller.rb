class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
    # Loading the controllers
    require_relative 'users_controller'
    require_relative 'memberships_controller'
    require_relative 'posts_controller'

     # Routes for UsersController
  get "/users" do
    UsersController.index
  end

  get "/users/:id" do
    UsersController.show
  end

  post "/users" do
    UsersController.create
  end

  delete "/users/:id" do
    UsersController.destroy
  end


    # Routes for MembershipsController
  get "/memberships" do
    MembershipsController.index
  end
end
