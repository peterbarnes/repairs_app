class AddCustomerToRepairs < ActiveRecord::Migration
  def change
  	add_column :repairs, :customer, :string
  end
end
