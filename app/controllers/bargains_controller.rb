class BargainsController < ApplicationController

  def show
	id = params[:id]
	@bargain = Bargain.find(id)
  end

  def index
	@bargains = Bargain.all
  end

  def new
  end

  def create
	@bargain = Bargain.create!(bargain_params)
logger.info @bargain
	flash[:notice] = "Bargain was successfully created."
        redirect_to bargains_path
  end

  def edit
	@bargain = Bargain.find params[:id]
  end

  def update
	@bargain = Bargain.find params[:id]
	@bargain.update_attributes!(bargain_params)
        flash[:notice] = "Bargain was successfully updated."
        redirect_to bargain_path(@bargain)
  end

  def destroy
    @bargain = Bargain.find(params[:id])
    @bargain.destroy
    flash[:notice] = "Bargain' deleted."
    redirect_to bargains_path
  end

  private 
  def bargain_params
    params.required(:bargain).permit(:price, :store, :user, :product_type, :description )
  end

end
