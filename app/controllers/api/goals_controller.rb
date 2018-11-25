class Api::GoalsController < ApplicationController
  before_action :authenticate_user
  before_action :authenticate_manager, except: [:index, :create, :show, :update]

  def index
    @goals = current_user.relationship.goals
    render "index.json.jbuilder"
  end

  def create
    @goal = Goal.new(
      user_id: current_user.id,
      relationship_id: current_user.relationship_id,
      subject: params[:subject],
      body: params[:body],
      start_date: params[:start_date],
      end_date: params[:end_date]
      )
    if @goal.save
      render json: { message: 'Goal created successfully' }, status: :created 
    else
      render json: { errors: @goal.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @goal = Goal.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @goal = Goal.find_by(id: params[:id])
    @goal.user_id = 1 || @goal.user_id
    @goal.relationship_id = params[:relationship_id] || @goal.relationship_id
    @goal.subject = params[:subject] || @goal.subject
    @goal.body = params[:body] || @goal.body
    @goal.start_date = params[:start_date] || @goal.start_date
    @goal.end_date = params[:end_date] || @goal.end_date
    if @goal.save
      render json: { message: 'Goal updated successfully' }, status: :created
    else
      render json: { errors: @goal.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    @goal = Goal.find_by(id: params[:id])
    if @goal.destroy
      render json: { message: 'Goal destroyed successfully' }, status: :destroyed
    else
      render json: { errors: @goal.errors.full_messages }, status: :bad_request
    end
  end
end
