class CreateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :collections do |t|

      t.timestamps
    end
  end
end
