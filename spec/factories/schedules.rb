FactoryBot.define do
  factory :schedule do
    start_date { '2020-11-17' }
    start_time { '2020-11-17 18:06:18' }
    end_date { '2020-11-17' }
    end_time { '2020-11-17 18:06:18' }
    interval { 1 }
    doctor { nil }
  end
end
