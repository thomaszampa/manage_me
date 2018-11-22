class Api::GoalsController < ApplicationController
  before_action :authenticate_user
  before_action :authenticate_admin, except: [:index, :create, :show, :update]

  def index
    @goals = Goals.where(relationship_id: current_user.relationship_id)
  end

  def create
    
  end

  def show
    
  end

  def update
    
  end

  def destroy
    
  end
end
