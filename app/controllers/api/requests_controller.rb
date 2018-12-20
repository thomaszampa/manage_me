class Api::RequestsController < ApplicationController
  before_action :authenticate_user

  def index
    @request = current_user.relationship.requests
    render "index.json.jbuilder"
  end

  def create
    if params[:complete]
      over_due = false
    else
      over_due = params[:over_due]
    end

    @request = Request.new(
      user_id: current_user.id,
      goal_id: params[:goal_id],
      relationship_id: current_user.relationship_id,
      body: params[:body],
      time_stamp: Time.now.strftime('%c'),
      due_date: params[:due_date],
      over_due: over_due,
      complete: params[:complete],
    )
    if params[:request_attachment]
      @request.request_attachment.attach(params[:request_attachment])
    end
    if @request.save
      render "show.json.jbuilder", status: :created
    else
      render json: { errors: request.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @request = Request.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    if params[:complete]
      over_due = false
    else
      over_due = params[:over_due]
    end

    @request = Request.find_by(id: params[:id])
    @request.goal_id = params[:goal_id] || @request.goal_id
    @request.relationship_id = params[:relationship_id] || @request.relationship_id
    @request.body = params[:body] || @request.body
    @request.due_date = params[:due_date] || @request.due_date
    @request.over_due = over_due 
    @request.complete = params[:complete]
    if @request.save
      render "show.json.jbuilder", status: :created
    else
      render json: { errors: @request.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    @request = Request.find_by(id: params[:id])
    if @request.destroy
      render json: { message: 'Request destroyed successfully' }, status: :destroyed
    else
      render json: { errors: @request.errors.full_messages }, status: :bad_request
    end
  end
end
