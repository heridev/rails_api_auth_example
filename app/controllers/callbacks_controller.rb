class CallbacksController < Devise::OmniauthCallbacksController

  skip_before_filter :verify_authenticity_token, :only => [:google]

  def google
    Rails.logger.info '==========================='
    Rails.logger.info request.env['omniauth.auth']
    Rails.logger.info '==========================='
    #@user = User.find_for_open_id(request.env["omniauth.auth"], current_user)

    #if @user.persisted?
      #flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
      sign_in_and_redirect User.last, :event => :authentication
    #else
      #session["devise.google_data"] = request.env["omniauth.auth"]
      #redirect_to new_user_registration_url
    #end
  end
end
