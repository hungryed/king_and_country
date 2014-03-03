class UsersController < ApplicationController
  def show
    @user = params[:id]
  end

  def edit
    @user = params[:id]
  end
end
