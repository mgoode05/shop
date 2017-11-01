class ProductsController < ApplicationController
    
    # before_action :set_ho, only: [:show, :edit, :update, :destroy]
    # before_action :authorize, except: [:index, :show]

    def index
        if current_user.nil? 
            redirect_to new_session_path
        else
            @products = Product.all
        end
    end

    def show
        @product = Product.find(params[:id])
        @order = Order.new
    end


end