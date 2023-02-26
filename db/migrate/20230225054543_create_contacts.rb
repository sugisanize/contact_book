class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.datetime :date,                  null: false
      t.integer  :temperature,           null: false
      t.datetime :bedtime,               null: false
      t.datetime :wakeuptime,            null: false
      t.integer  :defecationtimezone_id
      t.integer  :defecationquality_id
      t.integer  :bathing_id,            null: false
      t.integer  :mood_id,               null: false
      t.datetime :dinnertime
      t.string   :dinner_content
      t.datetime :breakfasttime
      t.string   :breakfast_content
      t.datetime :picuptime
      t.string   :contact
      t.timestamps
    end
  end
end
