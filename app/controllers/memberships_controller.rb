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

      # POST /memberships
    def create
        membership = Membership.new(membership_params)
        if membership.save
        render json: membership, status: :created
        else
        render json: { error: 'Failed to create membership.' }, status: :unprocessable_entity
        end
    end

      # DELETE /memberships/:id
    def destroy
        membership = Membership.find(params[:id])
        if membership.destroy
        head :no_content
        else
        render json: { error: 'Failed to delete membership.' }, status: :unprocessable_entity
        end
    end

    private

    def membership_params
      params.require(:membership).permit(:plan_name, :pre_built_workouts, :gym_access, :class_access, :studio_access, :meal_plans, :personal_training_sessions, :price, :user_id)
    end
end