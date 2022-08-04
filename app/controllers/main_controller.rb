class MainController < ApplicationController
  def index
    @orders = Order.all
  end

  def pizza
    @pizza = PizzaType.all
  end
end
