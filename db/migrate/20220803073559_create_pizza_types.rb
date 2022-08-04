class CreatePizzaTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :pizza_types do |t|
      t.string :name
      t.decimal :price

      t.timestamps
    end
    PizzaType.create(name: 'Peperoni',price: 5)
    PizzaType.create(name: 'Margaritha',price: 5.5)
    PizzaType.create(name: 'Chili',price: 6)
  end

end
