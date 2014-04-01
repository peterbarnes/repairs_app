class CreateRepairs < ActiveRecord::Migration
  def change
    create_table :repairs do |t|
      t.string :status
      t.text :notes
      t.text :symptoms
      t.string :item
      t.string :item_serial
      t.boolean :complete

      t.timestamps
    end
  end
end
