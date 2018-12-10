class CartsController < ApplicationController
	def show
		@order_items = current_order.order_items
    @all_suppliers = Supplier.all
		@all_supplies = Supply.all
	end
end
