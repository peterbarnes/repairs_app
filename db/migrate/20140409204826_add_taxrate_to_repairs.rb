class AddTaxrateToRepairs < ActiveRecord::Migration
  def change
    add_column :repairs, :taxrate, :decimal
  end
end
