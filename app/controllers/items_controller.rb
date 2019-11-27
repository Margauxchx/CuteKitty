class ItemsController < ApplicationController
	
	def index
	  @items = Item.all
  end
	def show
		@item = Item.find(params[:id])
	end 

  # GET /line_items/new
  def new
    @item = Item.new
  end

  # GET /line_items/1/edit
  def edit
    @item = Item.find(params[:id])
  end

  # POST /line_items
  # POST /line_items.json
  def create
    @item = Item.create(item_params)
    redirect_to items_path
  end

  # PATCH/PUT /line_items/1
  # PATCH/PUT /line_items/1.json
  def update
    @item = Item.find(params[:id])
    @item.update(product_params)
    redirect_to items_path
  end

  # DELETE /line_items/1
  # DELETE /line_items/1.json
  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
   def item_params
    params.require(:item).permit(:name, :price)

   end
end

