class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    # @user.save

    UserMailer.delay.welcome_email(@user)

    redirect_to '/'
  end

  private

    def user_params
      params.require(:user).permit(:email)
    end
end
