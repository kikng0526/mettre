class FashionsController < ApplicationController
  def index
    @fashions = Fashion.includes(:user).order('created_at DESC')
  end

  def new
    @fashion = Fashion.new
    @coments = Comment.all
  end

  def create
    @fashion = Fashion.new(fashion_params)
    if @fashion.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show 
    @fashion = Fashion.find(params[:id])
    @comment  = Comment.new
    @comments = @fashion.comments.includes(:user)
  end

  def destroy
    @fashion = Fashion.find(params[:id])
    if @fashion.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  def edit
    @fashion = Fashion.find(params[:id])
  end

  def update
    @fashion = Fashion.find(params[:id])
    if @fashion.update(fashion_params)
      redirect_to root_path
    else
      render :edit
    end
  end



  private

  def fashion_params
    params.require(:fashion).permit(:title, :text, :image, :sex_id, :age_id, :height_id, :accessories, :tops, :outer, :pants).merge(user_id: current_user.id)
  end
  
end


# class ProductsController < ApplicationController
#   before_action :move_to_index, except: [:index, :show]
#   before_action :set_product, only: [:show, :destroy, :edit, :update]

#   def new
#     @product = Product.new
#   end

#   def create
#     @product = Product.new(product_params)
#     if @product.save
#       redirect_to root_path
#     else
#       render :new
#     end
#   end

#   def index
#     @products = Product.includes(:user).order('created_at DESC')
#   end

#   def show
#   end

#   def destroy
#     if @product.destroy
#       redirect_to root_path
#     else
#       render :show
#     end
#   end

#   def edit
#   end

#   def update
#     if @product.update(product_params)
#       redirect_to product_path
#     else
#       render :edit
#     end
#   end

#   private

#   def product_params
#     params.require(:product).permit(:name, :text, :price, :image, :category_id, :status_id, :burden_id, :area_id, :day_id).merge(user_id: current_user.id)
#   end

#   def move_to_index
#     redirect_to action: :index unless user_signed_in?
#   end

#   def set_product
#     @product = Product.find(params[:id])
#   end
# end
