class AddUserToRepair < ActiveRecord::Migration
  def change
    add_reference :repairs, :user, index: true
  end
end
