class StoresController < ApplicationController

  def show
    id = params[:id]
    @store = Store.find(id)
  end

  def index
    @stores = Store.all
  end

  def new
    @store ||= Store.new
  end

  def create
    @store = Store.new(store_params)
    if (@store.save)  #make sure validation goes through
      flash[:notice] = "#{@store.name} was successfully created."
      redirect_to stores_path
    else
      render "new"   #kinda redirect to new action again
    end
  end

  def edit
    @store = Store.find params[:id]
  end

  def update
    @store = Store.find params[:id]
    if (@store.update_attributes(store_params))
      flash[:notice] = "#{@store.name} was successfully updated."
      redirect_to store_path(@store)
    else
      render "edit"
    end
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
