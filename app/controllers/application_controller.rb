class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
    # Loading the controllers
    # require_relative 'users_controller'
    # require_relative 'memberships_controller'
    # require_relative 'posts_controller'

   

    #  Routes for UsersController
  get "/users" do
   users = User.all
   users.to_json
  end

  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json
  end

  post "/users" do
    user = User.new(params)
    if user.save
      status 201 
      user.to_json
    else
      status 400 
      user.errors.to_json
    end
  end

  delete "/users/:id" do
    controller = UsersController.new
    controller.destroy
  end


    # Routes for MembershipsController
  get "/memberships" do
    controller = MembershipsController.new
    controller.index
  end

  get "/memberships/:id" do
    controller = MembershipsController.new
    controller.show
  end

  post "/memberships" do
    controller = MembershipsController.new
    controller.create
  end

  delete "/memberships/:id" do
    controller = MembershipsController.new
    controller.destroy
  end


   # Routes for PostsController
    get "/posts" do
      controller = PostsController.new
      controller.index
    end

    get "/posts/:id" do
      controller = PostsController.new
      controller.show
    end

    post "/posts" do
      controller = PostsController.new
      controller.create
    end

    delete "/posts/:id" do
      controller = PostsController.new
      controller.destroy
    end
end
