class UsersController < ApplicationController

def show
	@user = User.find(params[:id])
end
def index
	@users = User.all
end
def new
    @user = User.new
end
def edit
	
	@user = User.find(params[:id])
end
def create
	@user = User.new(params.require(:user).permit(:username,:gender))
	 if @user.save
	 	    flash[:notice] = "user was created successfully."
	redirect_to user_path(@user)
     else

	render 'new'
     end
end
def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:username,:gender))
    	flash[:notice] = "user was updated successfully"
    	redirect_to @user
    else
       render 'edit'
    end
end
end
