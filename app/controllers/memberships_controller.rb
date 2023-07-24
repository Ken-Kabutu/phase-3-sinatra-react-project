class MembershipsController < ApplicationController
      # GET /memberships
    def index
        memberships = Membership.all
        render json: memberships
    end

    
end