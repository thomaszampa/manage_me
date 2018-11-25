class Api::CategoriesController < ApplicationController
  before_action :authenticate_user

  def index
    @categories = current_user.relationship.categories
    render "index.json.jbuilder"
  end

  def create
    @category = Category.new(
      name: params[:name],
      relationship_id: current_user.relationship_id
      )
    if @category.save
      render json: { message: 'Category created successfully' }, status: :created
    else
      render json: { errors: @category.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @category = Category.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @category = Category.find_by(id: params[:id])
    @category.name = params[:name] || @category.name
    @category.relationship_id = params[:relationship_id] || @category.relationship_id
    if @category.save
      render json: { message: 'Category updated successfully' }, status: :created
    else
      render json: { errors: @category.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    @category = Category.find_by(id: params[:id])
    if @category.destroy
      render json: { message: 'Category destroyed successfully' }, status: :destroyed
    else
      render json: { errors: @category.errors.full_messages }, status: :bad_request
    end
  end
end
