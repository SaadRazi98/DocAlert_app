class UsersController < ApplicationController
  def new
    @user = User.new
    render template: "users/signup"
  end

  def create
    @user = User.new(
      name: params[:user][:name],
      email: params[:user][:email],
      password: params[:user][:password],
      password_confirmation: params[:user][:password_confirmation],
    )
    if @user.save
      session[:user_id] = @user.id
      redirect_to "/login", notice: "User was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end
end
