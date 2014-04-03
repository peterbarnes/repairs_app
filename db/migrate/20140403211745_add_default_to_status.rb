class AddDefaultToStatus < ActiveRecord::Migration
  def change
  	remove_column :repairs, :status, :string
  	add_column :repairs, :status, :string, default: "false"
  end
end
