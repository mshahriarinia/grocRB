class ProductTypesController < ApplicationController

  def show
	id = params[:id]
	@product_type = ProductTypes.find(id)
  end

  def index
	@product_types = ProductType.all
  end

  def new
  end

  def create
params.required(:product_type).permit(:name, :brand, :description )
#params.permit(:name)
#params.permit(:brand)
#params.permit(:description)
	@product_type = ProductType.create!(params.required(:product_type).permit(:name, :brand, :description ))
	flash[:notice] = "#{@product_type.name} was successfully created."
        redirect_to product_types_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
