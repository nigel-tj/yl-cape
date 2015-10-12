class Users::SessionsController < Devise::SessionsController
  before_filter :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  def create
    user_password = params[:session][:password]
    user_email = params[:session][:email]
    user = user_email.present? && User.find_by(email: user_email)
    
    if user.valid_password? user_password
      sign_in user, store: false
      user.save
    end

  end

  # DELETE /resource/sign_out
  def destroy
    super
  end

end
