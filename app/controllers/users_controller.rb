class UsersController < ApplicationController
	def new
		@user = User.new
	end
	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = "Account created successfully."
			redirect_to @user
		else
			flash[:error] = "There was a problem creating your account. Please try again."
			render 'new'
		end
	end
	def index
		@users = User.all
	end
	def show
		@user = User.find_by(id: params[:id])
	end

	private
	def user_params
		params.require(:user).permit(:email, :password, :first_name, :last_name)
	end
end