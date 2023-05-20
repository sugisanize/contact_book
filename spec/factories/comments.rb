FactoryBot.define do
  factory :comment do
    sleepingstarttime    { '12:00' }
    sleepingendtime      { '14:00' }
    defecationtime       { '16:00' }
    defecationquality_id { '2' }
    mood_id              { '2' }
    lunchamount_id       { '2' }
    snackamount_id       { '2' }
    comment_text         { '一日元気いっぱい遊びました。' }
    association :contact
    association :user
  end
end
