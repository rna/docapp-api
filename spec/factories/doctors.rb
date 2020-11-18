FactoryBot.define do
  factory :doctor do
    name { 'MyString' }
    email { 'MyString' }
    specialization { 'MyString' }
    experience { 1 }
    fee { 1 }
  end
end
