class SnailsController < ApplicationController
  def index
    @snails = Snail.all
  end
  def show
  	@snail = Snail.find(params[:id])
  end
  def new
    @snail = Snail.new
  end
  def create
    @snail = Snail.new(user_params)
    if @snail.save
      redirect_to snails_path
    else
      render :new
    end
  end
  def edit
  	@snail = Snail.find(params[:id])
  end
  def update
  	@snail = Snail.find(params[:id])
  	if @snail.update_attributes(params.require(:snail).permit(:name, :gender, :location, :spirit_animal, :greatest_accomplishment, :password, :password_confirmation))
  		redirect_to snails_path
	else
		render :edit
	end
   end	
  private

  def user_params
    params.require(:snail).permit(:name, :gender, :location, :spirit_animal, :greatest_accomplishment, :password, :password_confirmation)
  end
end 