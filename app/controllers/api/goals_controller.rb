class Api::GoalsController < ApplicationController
  # before_action :authenticate_user
  # before_action :authenticate_admin, except: [:index, :create, :show, :update]

  def index
    @goals = Goal.all
    render "index.json.jbuilder"
  end

  def create
    @goal = Goal.new(
      )
  end

  def show
    
  end

  def update
    
  end

  def destroy
    
  end
end
