class RemoveStatus < ActiveRecord::Migration
  def change
  	remove_column :repairs, :status, :string
  end
end
