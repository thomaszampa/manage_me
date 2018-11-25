class Api::UsersController < ApplicationController
  before_action :authenticate_user, except: [:create]

  def index
    @user = User.all
    render "index.json.jbuilder"
  end

  def create
    user = User.new(
    relationship_id: params[:relationship_id] || nil,
    email: params[:email],
    password: params[:password],
    password_confirmation: params[:password_confirmation],
    artist_name: params[:artist_name] || nil,
    manager: params[:manager] || false,
    )
    if user.save
      render json: { message: 'User created successfully' }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.relationship_id = params[:relationship_id] || @user.relationship_id
    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.email = params[:email] || @user.email
    @user.access_token = params[:access_token] || @user.access_token
    @user.artist_name = params[:artist_name] || @user.artist_name
    @user.manager = params[:manager] || @user.manager
    if @user.save
      render json: { message: 'User updated successfully' }, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    if @user.destroy
      render json: { message: 'User destroyed successfully' }, status: :destroyed
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
  end
end
