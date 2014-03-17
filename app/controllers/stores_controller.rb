class StoresController < ApplicationController

  def show
	id = params[:id]
	@store = Store.find(id)
  end

  def index
	@stores = Store.all
  end

  def new
  end

  def create
	@store = Store.create!(store_params)
	flash[:notice] = "#{@store.name} was successfully created."
        redirect_to stores_path
  end

  def edit
	@store = Store.find params[:id]
  end

  def update
	@store = Store.find params[:id]
	@store.update_attributes!(store_params)
        flash[:notice] = "#{@store.name} was successfully updated."
        redirect_to store_path(@store)
  end

  def destroy
    @store = Store.find(params[:id])
    @store.destroy
    flash[:notice] = "Store '#{@store.name}' deleted."
    redirect_to stores_path
  end

  private 
  def store_params
    params.required(:store).permit(:name, :address, :description )
  end

end
