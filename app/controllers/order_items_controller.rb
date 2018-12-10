class OrderItemsController < ApplicationController

	def create
		@order = current_order
		@order_item = @order.order_items.new(order_item_params)
		@order.save
		session[:order_id] = @order.id
		redirect_to "/inventory"
	end

	def update
		permitValues = params.permit(order_item: [:supplier_id, :supply_id])
		supplierID = permitValues[:order_item][:supplier_id]
		supplyID = permitValues[:order_item][:supply_id]

		@order = current_order
		@order_item = @order.order_items.find(params[:id])
		newPrice = Cost.where(:supply_id => supplyID, :supplier_id => supplierID).pluck(:cost).first
		@order_item.update_attributes(:unit_price => newPrice)
		@order_item.update_attributes(order_item_params)
		@order_items = @order.order_items
		respond_to do |format|
			@order.save
		  format.js {render inline: "location.reload();" }
		end
	end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    @order.save
    redirect_to cart_path
  end

	private
		def order_item_params
			params.require(:order_item).permit(:supply_id, :quantity, :supplier_id)
		end
end
