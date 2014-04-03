class AddStatus < ActiveRecord::Migration
  def change
  	add_column :repairs, :status, :string
  end
end
