class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
#   def facebook
#     data = request.respond_to?(:get_header) ? request.get_header("omniauth.auth") : request.env["omniauth.auth"]
#     session["devise.facebook_data"] = data["extra"]["user_hash"]
#     render json: data
#   end
#
#   def sign_in_facebook
#     user = User.to_adapter.find_first(email: 'user@test.com')
#     user.remember_me = true
#     sign_in user
#     render (Devise.rails5? ? :body : :text) => ""
#   end
# end
def google_oauth2
  @user = User.find_for_google_oauth2(request.env["omniauth.auth"])

  if @user.persisted?
    flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
    sign_in_and_redirect @user, :event => :authentication
  else
    session["devise.google_data"] = request.env["omniauth.auth"]
    redirect_to new_user_registration_url
  end
end
end
