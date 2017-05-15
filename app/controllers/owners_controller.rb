class OwnersController < ApplicationController
  def index
  	@owners = Owner.all
  end

  def show
  	@owner = Owner.find(params[:id])
  end

  def create
  	@owner = Owner.new(owner_params)
  	if @owner.save
  	flash.now[:success] = "Owner Successfully created"
  	else
  		render 'new'
  	end
  end

  def new
  	@owner = Owner.new
  end

  def destroy
  end

  def edit
    @owner = Owner.find(params[:id])
  end

  def update
  	@owner = Owner.find(params[:id])
  	if @owner.update_attributes(owner_params)
  		flash[:success] = "Sucessfully updated"
  		redirect_to @owner
  	else 
  		render 'edit'
  	end
  end

  private
  def owner_params
      params.require(:owner).permit(:name, :email, :owner_image, :ic_number ,:address)
  end
end
