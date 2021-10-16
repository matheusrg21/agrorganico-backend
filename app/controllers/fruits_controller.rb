# frozen_string_literal: true

class FruitsController < ApplicationController
  before_action :set_fruit, only: %i[show update destroy]

  # GET /fruits
  # GET /fruits.json
  def index
    @fruits = Fruit.all
  end

  # GET /fruits/1
  # GET /fruits/1.json
  def show
    render json: @fruit, status: :ok
  end

  # POST /fruits
  # POST /fruits.json
  def create
    @fruit = Fruit.new(fruit_params)

    if @fruit.save
      render :show, status: :created, location: @fruit
    else
      render json: @fruit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fruits/1
  # PATCH/PUT /fruits/1.json
  def update
    if @fruit.update(fruit_params)
      render :show, status: :ok, location: @fruit
    else
      render json: @fruit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fruits/1
  # DELETE /fruits/1.json
  def destroy
    @fruit.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_fruit
    @fruit = Fruit.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def fruit_params
    params.permit(:name, :description)
  end
end
