# frozen_string_literal: true

class ShoppingListsController < ApplicationController
  before_action :set_shopping_list, only: %i[show update destroy]

  # GET /shopping_lists
  # GET /shopping_lists.json
  def index
    @shopping_lists = ShoppingList.all
  end

  # GET /shopping_lists/1
  # GET /shopping_lists/1.json
  def show; end

  # POST /shopping_lists
  # POST /shopping_lists.json
  def create
    @shopping_list = ShoppingList.new(shopping_list_params)

    if @shopping_list.save
      render :show, status: :created, location: @shopping_list
    else
      render json: @shopping_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shopping_lists/1
  # PATCH/PUT /shopping_lists/1.json
  def update
    if @shopping_list.update(shopping_list_params)
      render :show, status: :ok, location: @shopping_list
    else
      render json: @shopping_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shopping_lists/1
  # DELETE /shopping_lists/1.json
  def destroy
    @shopping_list.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_shopping_list
    @shopping_list = ShoppingList.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def shopping_list_params
    params.require(:shopping_list).permit(:itens: [], :user_id)
  end
end
