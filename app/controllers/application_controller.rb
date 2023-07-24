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
    controller = UsersController.new
    controller.show
  end

  post "/users" do
    controller = UsersController.new
    controller.create
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
