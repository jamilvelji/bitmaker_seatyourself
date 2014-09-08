class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    if current_user
      @reservation = @user.reservations.build
    end
  end
end