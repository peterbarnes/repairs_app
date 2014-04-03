class AddBooleanToRepairs < ActiveRecord::Migration
  def change
  	remove_column :repairs, :status, :string
    add_column :repairs, :status, :boolean
  end
end
