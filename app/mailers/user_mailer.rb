class UserMailer < ApplicationMailer

  def reset_password_email(user)
    @user = user
    @reset_password_url = edit_password_url(reset_password_token: @user.reset_password_token)
    mail_to( @user.email, subject: "Reset Password")
  end
end
