class AdminsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      #set temporary password
      @user.password = SecureRandom.hex(8)
      @user.save
      
      #send email with a reset password link
      UserMailer.reset_password_email(@user).deliver_now

      redirect_to admins_path, message: "User account successfully created!"
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :phone, :company_name, :company_address)
  end
end
