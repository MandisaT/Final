class GuestsController < ApplicationController
	  def new
	  	@guests =Guest.all
	  end

	  def index
	  end
	  def show
	  	@guest =Guest.find(params[:id])
	  end 

	  def create
	  	@guest= guest.new(guest_parmas)
		# creating a new record in the system 
		if @guest.save
			# saving the records 
			
			redirect_to  
			# redirecting to the show page for this user 
		else
			
			redirect_to 
	  end
	end 
	  def new
	  	@guest = Guest.new
	  end 
	  def edit
	  	  @guest =Guest.find(params[:id]) 
	  end 

	def update
	 @guest = Guest.find(params[:id])
	 @guest.update(user_parmas) 
	 redirect_to  user_path @user 
	end 
private 

	def guest_parmas
		params.require(:guest).permit(:fname, :lname, :email, :extra_guest,:dietary_needs)

	end 
end

