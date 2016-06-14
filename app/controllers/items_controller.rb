class ItemsController < ApplicationController
  def new
  	@item = Item.new
  end
  def index
  	@items =Item.all
  end

  
  def edit
    @item = Item.find(params[:id])
  end

  def create 
  	@item =Item.new(item_params)
	    if @item.save
		    flash[:notice] = " successfully created a new item"
		  	redirect_to items_path
	     else
		flash[:alert] = "please create a new item"
		redirect_to to  new_item_path
	   end
  end 
  def update
    @item= Item.find(params[:id])
    @item.update(item_params)
     redirect_to items_path
  end 
  def show
    @item =Item.find(params[:id])
  end 
   def  destroy
  	Item.find(params[:id]).destroy
    redirect_to new_item_path
  end 

   private
  def item_params
    params.require(:item).permit(:title ,:description,:image_url,:price ,:category , :item2_type)
  end
end
