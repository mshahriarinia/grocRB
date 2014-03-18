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
        logger.info '='*50
        logger.info bargain_params

	@bargain = Bargain.create!(bargain_params)
        #logger.info @bargain
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
    logger.info '='*50
    logger.info params
    params.required(:bargain).permit(:price, :store_id, :user_id, :product_type_id, :description )
  end

end
