class PagesController < ApplicationController
  before_action :authenticate_user!

  def inventory
    @suppliers = Supplier.all
    @supplies = Supply.all
    @order_item = current_order.order_items.new
    @orders = Order.all
    @costs = Cost.all
    @inventories = Inventory.all
    #@supplyQuantity = Supply.joins(:inventories)
    #       .select('inventories.supply_id,supplies.supplyname,inventories.quantity, supplies.suppliesid')
    @orderInfo = Order.joins(:suppliers).where('orders.suppliersid = suppliers.id').select('orders.*, suppliers.name')

    @osInfo = Order.joins("INNER JOIN suppliers ON suppliers.id = orders.supplier_id INNER JOIN supplies ON supplies.suppliesid = orders.supply_id INNER JOIN users ON orders.employee_id = users.id").select('users.first_name, users.last_name, orders.*', 'suppliers.name', 'supplies.*')

    @oInfo = Supplier.joins("INNER JOIN costs ON costs.supplier_id = suppliers.id INNER JOIN supplies ON supplies.suppliesid = costs.supply_id").select("supplies.supplyname, suppliers.name, costs.*")
    @oz = OrderItem.joins("INNER JOIN costs ON costs.supply_id = order_items.supply_id").select('costs.cost AS price, order_items.supply_id').where('costs.supply_id = 5');
  end

  def emps
    @users = User.all
  end

  def orderInfo
    @ooz = Order.joins("INNER JOIN supplies on orders.supply_id = supplies.suppliesid INNER JOIN suppliers ON suppliers.id = orders.supplier_id").select('orders.*, supplies.supplyname, suppliers.name AS supplier')
  end

  def listOrders
    @orderCount = Order.count
    @orderSum = Order.sum(:totalcost)
    @all_orders = Order.joins("INNER JOIN supplies on orders.supply_id = supplies.suppliesid INNER JOIN suppliers ON suppliers.id = orders.supplier_id INNER JOIN users ON users.id = orders.employee_id").select('orders.*, supplies.supplyname, suppliers.name AS supplier, users.first_name, users.last_name')
  end

  def listCosts
    @allCosts = Cost.joins("INNER JOIN suppliers ON costs.supplier_id = suppliers.id INNER JOIN supplies on costs.supply_id = supplies.suppliesid").select("costs.id, costs.cost, suppliers.name, supplies.supplyname")
  end


end
