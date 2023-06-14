FactoryBot.define do
  factory :user do
    child_first_name      { 'じろう' }
    team_id               { '2' }
    email                 { Faker::Internet.free_email }
    password              { 'test1111' }
    password_confirmation { password }
    last_name             { '山田' }
    first_name            { '太郎' }
    last_name_kana        { 'ヤマダ' }
    first_name_kana       { 'タロウ' }
    telephonenumber       { '09012345678' }
  end
end
