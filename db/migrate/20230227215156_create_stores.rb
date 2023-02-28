class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :model
      t.string :colour
      t.string :display
      t.string :category
      t.float :price

      t.timestamps
    end
  end
end
