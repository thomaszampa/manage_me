class Api::RequestsController < ApplicationController
  def index
    @request = Request.all
    render "index.json.jbuilder"
  end

  def create
    request = Request.new(
      user_id: 1,
      goal_id: params[:goal_id],
      relationship_id: params[:relationship_id],
      body: params[:body],
      time_stamp: Time.now.strftime('%c'),
      due_date: params[:due_date],
      over_due: params[:over_due],
      complete: params[:complete]
    )
    if request.save
      render json: { message: 'Request created successfully' }, status: :created
    else
      render json: { errors: request.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @request = Request.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @request = Request.find_by(id: params[:id])
    @request.goal_id = params[:goal_id] || @request.goal_id
    @request.relationship_id = params[:relationship_id] || @request.relationship_id
    @request.body = params[:body] || @request.body
    @request.due_date = params[:due_date] || @request.due_date
    @request.over_due = params[:over_due] || @request.over_due
    @request.complete = params[:complete] || @request.complete
    if @request.save
      render json: { message: 'Request updated successfully' }, status: :created
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
