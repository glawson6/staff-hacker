class SessionsController < ApplicationController
  before_action :view_headers
  before_action :redirect_if_signed_in, except: [:create, :destroy]

  def new
    puts 'In SessionsController new'
  end

  def create
    #user = User.find_by(email: params[:session][:email].downcase)

    #user = User.find_by(email: params[:email].downcase)
    puts "user_params[:email] #{user_params[:email]}"
    @user = User.find_by(email: user_params[:email]).try(:authenticate, user_params[:password])
    puts @user
    if @user && @user.authenticate(user_params[:password])
      sign_in @user
      puts "response headers => #{response.headers}"
      render json: @user
    else
      render json: {user: "Invalid Email or Password"}, status: :unprocessable_entity
    end
  end

  def destroy
    sign_out
    render json: {user: "User Logged Out"}
  end

  private
  def user_params
    params.each{|key| puts key.to_s}
    params.require(:user).permit(:email,:password)
  end

  def user_view(user)
    {user: {id: user.id, email:user.email, name:user.name}}
  end

end
