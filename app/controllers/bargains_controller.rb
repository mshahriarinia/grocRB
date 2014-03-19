class BargainsController < ApplicationController

  def show
    id = params[:id]
    @bargain = Bargain.find(id)
  end

  def index
    @bargains = Bargain.all
  end

  def new
    @bargain ||= Bargain.new
  end

  def create
    #logger.info bargain_params

    @bargain = Bargain.new(bargain_params)
    if(Bbargain.save)
      #logger.info @bargain
      flash[:notice] = "Bargain was successfully created."
      redirect_to bargains_path
    else
      render "new"
    end
  end

  def edit
    @bargain = Bargain.find params[:id]
  end

  def update
    @bargain = Bargain.find params[:id]
    if(@bargain.update_attributes(bargain_params))
      flash[:notice] = "Bargain was successfully updated."
      redirect_to bargain_path(@bargain)
    else
      render "edit"
    end
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
