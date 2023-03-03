FactoryBot.define do
  factory :contact do
    contact_date          { '2023-02-28 00:00:00' }
    temperature           { '36.6' }
    bedtime               { '20:00' }
    wakeuptime            { '06:00' }
    defecationtimezone_id { '2' }
    defecationquality_id  { '2' }
    bathing_id            { '2' }
    mood_id               { '2' }
    dinnertime            { '18:00' }
    dinner_content        { 'カレー' }
    breakfasttime         { '07:00' }
    breakfast_content     { 'ご飯、お味噌汁' }
    picuptime             { '17:00' }
    contact_text          { 'よろしくお願いいたします。' }
    association :user
  end
end
