# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bettle do
    maker_id 1
    taker_id 1
    fixture_id 1
    free_bet false
    win_maker "9.99"
    win_taker "9.99"
    accepted false
    expire_time "2013-04-05 15:43:38"
  end
end
