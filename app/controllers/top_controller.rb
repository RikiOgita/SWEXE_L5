class TopController < ApplicationController
    def main
        render 'login'
    end
    def login
        if BCrypt::Password.new($login_password) == params[:pass]
        #if User.find_by(uid: params[:uid],pass: params[:pass])
            session[:login_uid] = params[:uid]
            redirect_to root_path
        else
            render 'error'
        end
    end
    def logout
        session.delete(:login_uid)
        redirect_to root_path
    end
end
