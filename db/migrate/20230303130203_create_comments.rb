class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string     :sleepingstarttime
      t.string     :sleepingendtime
      t.string     :defecationtime
      t.integer    :defecationquality_id
      t.integer    :mood_id
      t.integer    :lunchamount_id
      t.integer    :snackamount_id
      t.text       :comment_text
      t.references :contact,               null: false, foreign_key: true
      t.references :user,                  null: false, foreign_key: true
      t.timestamps
    end
  end
end