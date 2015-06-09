class SessionsController < ApplicationController
    def create
        auth = request.env["omniauth.auth"]
        user = User.find_by_provider_and_uid(auth[:provider], auth[:uid]) || User.create_with_omniauth(auth)
        @current_user = user
        session[:user_id] = user.id
        session[:user_info] = auth
        redirect_to root_url, :notice => "Signed in!"
    end

    def destroy
        @current_user = nil
        session[:user_id] = nil
        session[:user_info] = nil
        redirect_to root_url, :notice => "Signed out!"
    end
end
