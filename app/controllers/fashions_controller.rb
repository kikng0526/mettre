class FashionsController < ApplicationController
  def index
  end

  def new
    @fashion = Fashion.new
  end
  
end
