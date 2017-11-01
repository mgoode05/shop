class CartsController < ApplicationController
    before_action :authorize

    def index
         @carts = Cart.where(order_id: active_order.id)
    end

    def show
    end

    def new
        @cart = Cart.new
    end
    
    def add_item
        @current_cart_item = Cart.find_by(order_id: active_order.id, product_id: params[:product_id])
        if @current_cart_item.nil?

            @cart = Cart.new(order_id: active_order.id, product_id: params[:product_id], quantity: params[:quantity])
            if @cart.save
            redirect_to products_path
            else 
            redirect_to products_path #to do send back message like cart add unsuccessful
            end
        else 
          if @current_cart_item.update_attributes(quantity: params[:quantity])
            redirect_to products_path
          else
            flash[:notice] = 'Update Not Successful'
    end
end
end

    def remove_item
        Cart.find(params[:cart_id]).destroy
        redirect_to products_path
    end

    def purchase
        current_user.orders.update(is_active: false)
        current_user.orders << Order.new(is_active: true)
        #direct to somewhere else
        redirect_to products_path
    end

    def create
        @current_order = Order.find_by(is_active: true)
        @cart = Cart.new(cart_params)
        if @cart.save
            redirect_to products_path
        else
            render :new 
        end
    end
    private
        def cart_params
        params.require(:cart).permit(:product_id)
        end

end

