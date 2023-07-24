class MembershipsController < ApplicationController
      # GET /memberships
    def index
        memberships = Membership.all
        render json: memberships
    end

      # GET /memberships/:id
    def show
        membership = Membership.find(params[:id])
        render json: membership
    end
end