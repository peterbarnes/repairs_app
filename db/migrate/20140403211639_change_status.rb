class ChangeStatus < ActiveRecord::Migration
  def change
  	remove_column :repairs, :status, :boolean
  	add_column :repairs, :status, :string
  end
end
