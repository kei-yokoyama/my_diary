class UsersController < ApplicationController
  def show
    @nickname = User.find(params[:id]).nickname
    @email = User.find(params[:id]).email
  end
end
