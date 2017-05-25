class DevicesController < ApplicationController
  
  def index

  end

  def show
  	@device = Device.find_by(owner_id: params[:id])
  end

  def create
  	@device = Device.new(device_params)
  	@owner = Owner.find_by_id(@device.owner_id)
  	@device.address = @owner.address
  	
  	
  	if @device.save
  	flash.now[:success] = "Device Successfully created"
  	render 'show'
  	else
  		render 'new'
  	end
  end

  def new
  	@owner = Owner.all
  	@device = Device.new
  end

  def destroy
  end

  def edit
  end

  def update
  end

   private
   def device_params
   		params.require(:device).permit(:owner_id)
   end
 
end
