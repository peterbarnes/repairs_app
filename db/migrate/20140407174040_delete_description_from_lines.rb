class DeleteDescriptionFromLines < ActiveRecord::Migration
  def change
  	remove_column :lines, :description, :string
  	add_column :lines, :title, :string
  end
end
