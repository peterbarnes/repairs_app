class AddDefaultBooleanValue < ActiveRecord::Migration
  def change
  	def up
  		change_column :repairs, :complete, :boolean, :default => false
  	end

  	def down
  		change_column :repairs, :complete, :boolean, :default => nil
  	end
  end
end
