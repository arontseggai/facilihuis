class AddInformationFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :telephone_number, :string
    add_column :users, :bank_account, :string
  end
end
