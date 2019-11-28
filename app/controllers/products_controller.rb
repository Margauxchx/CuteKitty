class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @item = Item.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.create(product_params)
    redirect_to products_path
  end
  def update
    respond_to do |format|
      if @product.update(product_params)
        product_save_success_response(format,
                                      'Product was successfully updated.')
      else
        product_save_failure_response(format, :edit)
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
      flash[:info] = 'Product was successfully destroyed.'
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  def product_save_success_response(format, message)
    format.html { redirect_to @product }
    format.json { render :show, status: :created, location: @product }
    flash[:info] = message
  end

  def product_save_failure_response(format, action)
    format.html { render action }
    format.json do
      render json: @product.errors,
             status: :unprocessable_entity
    end
  end

  # Never trust parameters from the scary internet,
  # only allow the white list through.
  def product_params
    params.require(:product).permit(:title, :description, :picture, :price)
  end
end