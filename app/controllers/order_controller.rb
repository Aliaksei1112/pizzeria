class OrderController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    @order = Order.new
  end

  def create
    @names = params[:names]
    @quantity = params[:amount]
    items = []
    total = 0
    (0..@names.size - 1).each { |index|
      item = Item.new
      item.pizza_type = PizzaType.find_by_name(@names[index])
      item.quantity = @quantity[index].to_f
      items.push(item)
      total += item.pizza_type.price.to_f*item.quantity.to_f
    }

    @order = Order.new
    @order.items = items
    @order.total = total
    if @order.save
      redirect_to root_url
    else
      render :main/pizza_path
    end
  end
end
