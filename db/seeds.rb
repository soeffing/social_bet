# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times.each do |i|

  b = Bettle.new
  b.maker_id = 2
  b.fixture_id = (1..80).to_a.sample
  b.free_bet = 0
  b.win_maker = (1..80).to_a.sample
  b.win_taker = (1..80).to_a.sample
  b.expiration_time = Time.at(Time.now + rand * ((Time.now + 1.year).to_f - Time.now.to_f))
  b.bettle_status_id = 1
  b.taker_outcome_id = (1..3).to_a.sample
  b.maker_outcome_id = (1..3).to_a.sample
  b.save
end



#def time_rand from = Time.now, to = Time.now + 1.year
#  Time.at(from + rand * (to.to_f - from.to_f))
# end