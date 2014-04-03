class AddDefaultToBoolean < ActiveRecord::Migration
  def change
  	def up
  		change_column :repairs, :complete, :boolean, :default => false
  	end
  end
end
