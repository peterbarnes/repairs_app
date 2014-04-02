class AddContactToRepairs < ActiveRecord::Migration
  def change
    add_column :repairs, :contact, :string
  end
end
