module SessionsHelper
  def sign_in(user)
    remember_token = User.new_remember_token
    session[:remember_token] = remember_token
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_token, remember_token)
    self.current_user = user
  end

  def resolve_token
    token = request.headers['HTTP_REMEMBER_TOKEN'] || cookies[:remember_token]
    puts token
    token
  end

  def sign_out
    token = resolve_token
    user = current_user_token(token)
    puts "Signing out user current_user #{user} with token #{token}"
    if (user)
      user.update_attribute(:remember_token, User.new_remember_token)
      cookies.delete(:remember_token)
      self.current_user = nil
    end
  end

  def signed_in?
    puts "resolve_token => #{resolve_token}"
    signedin = !current_user_token(resolve_token).nil?
    puts "signedin => #{signedin}"
    signedin
  end

  def current_user=(user)
    @current_user = user
  end

  # def current_user
  #   puts 'Called current_user!!!!!'
  #   remember_token = User.digest(cookies[:remember_token])
  #   @current_user ||= User.find_by(remember_token: remember_token)
  # end

  def current_user_token(token)
    remember_token = User.digest(token)
    @current_user = User.find_by(remember_token: token) if token
    @current_user
  end

  def current_user?(user)
    current_user == user
  end

  def redirect_if_signed_in
    #redirect_to(root_path) if signed_in?
    if signed_in?
      puts "Are we signed in?"
      render json: current_user
    else
      render json: {user: "Invalid Email or Password"}, status: :unprocessable_entity
    end
  end

  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end

  def store_location
    session[:return_to] = request.url if request.get?
  end

  def signed_in_user
    unless signed_in?
      # store_location
      render json: {user: "Please sign in."}, status: :unprocessable_entity
    end
  end

  def view_headers
    headers.each{|header| puts header.to_s}
  end

  def admin_user
    redirect_to(user_path(current_user)) unless current_user.admin?
  end
end
