class SnailsController < ApplicationController
  def index
    @snails = Snail.all
  end

  def new
    @snail = Snail.new
  end

  def create
    @snails = Snail.new(user_params)
    if @snails.save
      redirect_to snails_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:snail).permit(:name, :gender, :location, :spirit_animal, :greatest_accomplishment, :password, :password_confirmation)
  end
end 