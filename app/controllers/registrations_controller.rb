class RegistrationsController < ApplicationController
	def new
	
	end

	def create
		@user = User.new(registrations_params)
			if @user.save
				flash[:notice] = "User registered"
				redirect_to root_path
			else
				flash[:notice] = "Error in registration"
				redirect_to sign_in_path
			end

	end

	private

	# Never trust parameters from the scary internet, only allow the white list through.
	def registrations_params
		params.require(:registrations).permit(:name, :last_name, :email, :password, :phone)
	end

end
