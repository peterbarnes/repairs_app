class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.integer :quantity
      t.string :description
      t.integer :amount
      t.boolean :taxable

      t.timestamps
    end
  end
end
