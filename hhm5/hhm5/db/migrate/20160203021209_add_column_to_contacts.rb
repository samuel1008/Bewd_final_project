class AddColumnToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :name, :string
    add_column :contacts, :phonenumber, :string
    add_column :contacts, :email, :string
  end
end