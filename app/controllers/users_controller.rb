class UsersController < ApplicationController
  def show
    @fashions = current_user.fashions
  end
end
