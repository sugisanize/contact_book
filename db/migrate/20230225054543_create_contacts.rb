class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.datetime   :contact_date,          null: false
      t.string     :temperature,           null: false
      t.string     :bedtime,               null: false
      t.string     :wakeuptime,            null: false
      t.integer    :defecationtimezone_id
      t.integer    :defecationquality_id
      t.integer    :bathing_id,            null: false
      t.integer    :mood_id,               null: false
      t.string     :dinnertime
      t.string     :dinner_content
      t.string     :breakfasttime
      t.string     :breakfast_content
      t.string     :picuptime
      t.text       :contact_text
      t.references :user,                  null: false, foreign_key: true
      t.timestamps
    end
  end
end
