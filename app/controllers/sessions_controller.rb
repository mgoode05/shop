class SessionsController < ApplicationController
    def new
    end
    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to products_path, notice: 'logged in'
        else
            flash.now.alert = 'This is awkward. You entered invalid login credentials - try again'
            render :new
        end
end

def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged out!'
end 
end