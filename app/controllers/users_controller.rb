class UsersController < ApplicationController
  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
  end


  private

  def user_params
    params.required(:user).permit(:balance, :email, :first_name, :last_name, :username, :uid, :provider, :name, :oauth_token, :oauth_token_expires_at)
  end
end
