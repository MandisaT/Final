class BagsController < ApplicationController
  def add
  	id = params[:id]
    # if the bag has alaready been created  , use the existing bag else create a new bag
  	if session[:bag] then 
  		bag = session[:bag]
  	else
  		session[:bag] ={}
  		bag = session[:bag]
  end
  # if the party item has already been added to the art, increment the value else set the bag at 1
  if bag[id] then 
  	 bag[id] = bag[id ] + 1
  else 
  	bag[id] = 1
  end 
  redirect_to :action => :index
end 
def clearBag
	session[:bag] = nil 
  redirect_to :action => :index
end 

  def index
    # if there is a cart pass it to the page for display else pass an empty value
  	if session[:bag] then 
  		@bag = session[:bag]
  	else
  		@bag = {}
    end
  end
  def show
      @item =Item.find(params[:id])
  end 
end 