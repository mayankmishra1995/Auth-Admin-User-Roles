class PasswordsController < ApplicationController

  def edit
    if params[:reset_password_token].present?
      @user = User.find_by(reset_password_token: params[:reset_password_token])
    else
      redirect_to new_user_session_path, alert: 'Invalid reset password token'
    end
  end

  def update
    @user = User.find_by(reset_password_token: params[:reset_password_token])
    if @user.update(user_params)
      @user.update(reset_password_token: nil)

      if @user.admin?
        sign_in @user, bypass: true
        redirect_to admins_path, alert: "password reset successful"
      else
        sign_in @user, bypass: true
        redirect_to dashboard_path, alert: "password reset successful"
      end
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end
