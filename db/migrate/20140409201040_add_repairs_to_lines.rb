class AddRepairsToLines < ActiveRecord::Migration
  def change
    add_column :lines, :repair_id, :integer
  end
end
