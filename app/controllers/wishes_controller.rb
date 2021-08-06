class WishesController < ApplicationController
  def index
    @wishes = Wish.all
  end

  def new
    @wish = Wish.new
  end

  def create
    @wish = Wish.new(wish_params)
    if @wish.save
      redirect_to wishes_path
    else
      render :new
  end
  end







  private
  def wish_params
   params.require(:wish).permit(:name, :status) 
  end

end
