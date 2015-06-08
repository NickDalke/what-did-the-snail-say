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
    @snail = Snail.new(snail_params)
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
  	if @snail.update_attributes(snail_params)
  		redirect_to snails_path
	  else
		  render :edit
	  end
  end	
  def destroy
    @snail = Snail.find(params[:id])
  
    @snail.destroy
    redirect_to snails_path
  end
  private
  def snail_params
    params.require(:snail).permit(:name, :gender, :location, :spirit_animal, :greatest_accomplishment, :password, :password_confirmation)
  end
end 