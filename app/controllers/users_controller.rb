class UsersController < ApplicationController

  def user_params
    params.require(:user).permit(
      :registration,
      :email,
      :password,
      :password_confirmation,
      :first_name,
      :last_name,
      :role
    )
  end
end
