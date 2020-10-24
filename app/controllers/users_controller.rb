class UsersController < ApplicationController

  def show
    @fashions = current_user.fashions
    @user = User.find(params[:id])
    @fashion = Fashion.new
  end

  # def edit
  #   @user = User.find(params[:id])
  # end


  # def update
  #   @user = User.find(params[:id])
  #   if @user.update(user_params)
  #     redirect_to users_show
  #   else
  #     render :show
  #   end
  # end



  # private

  # def fashion_params
  #   params.require(:user).permit(:username,:nickname)
  # end
end
