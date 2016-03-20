class AddEmailConfirmColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email_confirmed, :boolean, :defaut => false
    add_column :users, :confirm_token, :string
  end
end
