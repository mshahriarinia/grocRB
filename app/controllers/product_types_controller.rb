class ProductTypesController < ApplicationController

  def show
	id = params[:id]
	@product_type = ProductType.find(id)
  end

  def index
	@product_types = ProductType.all
  end

  def new
  end

  def create
	@product_type = ProductType.create!(product_type_params)
	flash[:notice] = "#{@product_type.name} was successfully created."
        redirect_to product_types_path
  end

  def edit
	@product_type = ProductType.find params[:id]
  end

  def update
	@product_type = ProductType.find params[:id]
	@product_type.update_attributes!(product_type_params)
        flash[:notice] = "#{@product_type.name} was successfully updated."
        redirect_to product_type_path(@product_type)
  end

  def destroy
    @product_type = ProductType.find(params[:id])
    @product_type.destroy
    flash[:notice] = "Product type '#{@product_type.name}' deleted."
    redirect_to product_types_path
  end

  private 
  def product_type_params
    params.required(:product_type).permit(:name, :brand, :description )
  end

end
