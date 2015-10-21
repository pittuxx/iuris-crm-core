class AddAdminToIurisUsers < ActiveRecord::Migration
  def change
    add_column :iuris_users, :admin, :boolean, default: :false
  end
end
