class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.references :pizza_type
      t.integer :quantity

      t.timestamps
    end
  end
end
