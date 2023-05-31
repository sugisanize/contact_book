class AddPicuppersonToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :picupperson, :string
  end
end
