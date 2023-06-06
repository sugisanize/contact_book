class AddTelephonenumberToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :telephonenumber, :integer
  end
end
