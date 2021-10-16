# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authorize_request, except: :create
  before_action :find_user, except: %i[create index]

  # GET /users
  def index
    @users = User.all
    render json: @users, status: :ok
  end

  # GET /users/{name}
  def show
    render json: @user, status: :ok
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  # PUT /users/{name}
  def update
    unless @user.update(user_params)
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  # DELETE /users/{name}
  def destroy
    @user.destroy
  end

  private

  def find_user
    @user = User.find_by_name!(params[:_name])
  rescue ActiveRecord::RecordNotFound
    render json: { errors: 'Usuário não encontrado' }, status: :not_found
  end

  def user_params
    params.permit(
      :avatar, :name, :email, :password, :password_confirmation
    )
  end
end
