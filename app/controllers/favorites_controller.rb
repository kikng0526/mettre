class FavoritesController < ApplicationController
  def create
    @favorite = current_user.favorites.create(fashion_id: params[:fashion_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @fashion = Fashion.find(params[:fashion_id])
    @favorite = current_user.favorites.find_by(fashion_id: @fashion.id)
    @favorite.destroy
    redirect_back(fallback_location: root_path)
  end
end
