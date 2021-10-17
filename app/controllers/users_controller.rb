class UsersController < ApplicationController
    def index
        @user = User.all
    end
    
    def new
        @user = User.new
    end
    
    def create
        uid = params[:user][:uid]
        pass = params[:user][:pass]
        $login_password = BCrypt::Password.create(pass)
        @user =User.new(uid: uid,pass: $login_password)
        
        if @user.save
            flash[:notice] = 'ユーザ登録完了'
            redirect_to users_path
        else 
            render new_user_path
        end
    end
    
    def destroy
        user = User.find(params[:id])
        user.destroy
        redirect_to users_path
    end
end
