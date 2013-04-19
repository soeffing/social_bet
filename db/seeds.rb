# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Bettle.destroy_all

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


League.destroy_all

League.new(:league_name => "Liga BBVA", :id => 1).save
League.new(:league_name => "Champions League", :id => 2).save



Fixture.destroy_all

[[1, 14, 16, "2013-04-14 00:00:00 UTC"], [1, 11, 13, "2013-04-14 00:00:00 UTC"], [1, 7, 18, "2013-04-14 00:00:00 UTC"], [1, 19, 8, "2013-04-14 00:00:00 UTC"], [1, 2, 9, "2013-04-14 00:00:00 UTC"], [1, 4, 17, "2013-04-14 00:00:00 UTC"], [1, 1, 15, "2013-04-14 00:00:00 UTC"], [1, 10, 6, "2013-04-14 00:00:00 UTC"], [1, 20, 3, "2013-04-14 00:00:00 UTC"], [1, 12, 5, "2013-04-14 00:00:00 UTC"], [1, 13, 16, "2013-04-21 00:00:00 UTC"], [1, 18, 11, "2013-04-21 00:00:00 UTC"], [1, 8, 7, "2013-04-21 00:00:00 UTC"], [1, 9, 19, "2013-04-21 00:00:00 UTC"], [1, 17, 2, "2013-04-21 00:00:00 UTC"], [1, 15, 4, "2013-04-21 00:00:00 UTC"], [1, 6, 1, "2013-04-21 00:00:00 UTC"], [1, 3, 10, "2013-04-21 00:00:00 UTC"], [1, 5, 20, "2013-04-21 00:00:00 UTC"], [1, 12, 14, "2013-04-21 00:00:00 UTC"], [1, 14, 13, "2013-04-28 00:00:00 UTC"], [1, 16, 18, "2013-04-28 00:00:00 UTC"], [1, 11, 8, "2013-04-28 00:00:00 UTC"], [1, 7, 9, "2013-04-28 00:00:00 UTC"], [1, 19, 17, "2013-04-28 00:00:00 UTC"], [1, 2, 15, "2013-04-28 00:00:00 UTC"], [1, 4, 6, "2013-04-28 00:00:00 UTC"], [1, 1, 3, "2013-04-28 00:00:00 UTC"], [1, 10, 5, "2013-04-28 00:00:00 UTC"], [1, 20, 12, "2013-04-28 00:00:00 UTC"], [1, 18, 13, "2013-05-05 00:00:00 UTC"], [1, 8, 16, "2013-05-05 00:00:00 UTC"], [1, 9, 11, "2013-05-05 00:00:00 UTC"], [1, 17, 7, "2013-05-05 00:00:00 UTC"], [1, 15, 19, "2013-05-05 00:00:00 UTC"], [1, 6, 2, "2013-05-05 00:00:00 UTC"], [1, 3, 4, "2013-05-05 00:00:00 UTC"], [1, 5, 1, "2013-05-05 00:00:00 UTC"], [1, 12, 10, "2013-05-05 00:00:00 UTC"], [1, 20, 14, "2013-05-05 00:00:00 UTC"], [1, 14, 18, "2013-05-12 00:00:00 UTC"], [1, 13, 8, "2013-05-12 00:00:00 UTC"], [1, 16, 9, "2013-05-12 00:00:00 UTC"], [1, 11, 17, "2013-05-12 00:00:00 UTC"], [1, 7, 15, "2013-05-12 00:00:00 UTC"], [1, 19, 6, "2013-05-12 00:00:00 UTC"], [1, 2, 3, "2013-05-12 00:00:00 UTC"], [1, 4, 5, "2013-05-12 00:00:00 UTC"], [1, 1, 12, "2013-05-12 00:00:00 UTC"], [1, 10, 20, "2013-05-12 00:00:00 UTC"], [1, 12, 4, "2013-05-19 00:00:00 UTC"], [1, 20, 1, "2013-05-19 00:00:00 UTC"], [1, 10, 14, "2013-05-19 00:00:00 UTC"], [1, 8, 18, "2013-05-19 00:00:00 UTC"], [1, 9, 13, "2013-05-19 00:00:00 UTC"], [1, 17, 16, "2013-05-19 00:00:00 UTC"], [1, 15, 11, "2013-05-19 00:00:00 UTC"], [1, 6, 7, "2013-05-19 00:00:00 UTC"], [1, 3, 19, "2013-05-19 00:00:00 UTC"], [1, 5, 2, "2013-05-19 00:00:00 UTC"], [1, 8, 14, "2013-05-29 00:00:00 UTC"], [1, 18, 9, "2013-05-29 00:00:00 UTC"], [1, 13, 17, "2013-05-29 00:00:00 UTC"], [1, 16, 15, "2013-05-29 00:00:00 UTC"], [1, 11, 6, "2013-05-29 00:00:00 UTC"], [1, 7, 3, "2013-05-29 00:00:00 UTC"], [1, 19, 5, "2013-05-29 00:00:00 UTC"], [1, 2, 12, "2013-05-29 00:00:00 UTC"], [1, 4, 20, "2013-05-29 00:00:00 UTC"], [1, 1, 10, "2013-05-29 00:00:00 UTC"], [1, 9, 8, "2013-06-01 00:00:00 UTC"], [1, 17, 18, "2013-06-01 00:00:00 UTC"], [1, 15, 13, "2013-06-01 00:00:00 UTC"], [1, 6, 16, "2013-06-01 00:00:00 UTC"], [1, 3, 11, "2013-06-01 00:00:00 UTC"], [1, 5, 7, "2013-06-01 00:00:00 UTC"], [1, 12, 19, "2013-06-01 00:00:00 UTC"], [1, 20, 2, "2013-06-01 00:00:00 UTC"], [1, 10, 4, "2013-06-01 00:00:00 UTC"], [1, 14, 1, "2013-06-01 00:00:00 UTC"]].each do |fix|
 Fixture.new(:league_id => fix[0], :team_1_id => fix[1], :team_2_id => fix[2], :date => fix[3]).save
end


Team.destroy_all

[[ 1 ,"Athletic Bilbao"], [ 2 ,"Atletico Madri]d"], [ 3 ,"Barcelona"], [ 4 ,"Betis"], [ 5 ,"Celta"], [6, "Deportivo La Coruna"], [ 7 ,"Espanyol"], [ 8 ,"Getafe"], [ 9 ,"Granada"], [ 10 ,"Levante"], [ 11 ,"Malaga"], [ 12 ,"Mallorca"], [ 13 ,"Osasuna"], [ 14, "Rayo Vallecano"], [15, "Real Madrid"], [16, "Real Sociedad"], [ 17 ,"Sevilla"], [ 18 ,"Valencia"], [ 19 ,"Valladolid"], [ 20 ,"Zaragoza"]].each do |team|
  Team.new(:id => team[0], :team_name => team[1]).save
end


Outcome.destroy_all
Outcome.new(:id => 1, :en => "wins").save
Outcome.new(:id => 2, :en => "tie").save
Outcome.new(:id => 3, :en => "loses").save








#def time_rand from = Time.now, to = Time.now + 1.year
#  Time.at(from + rand * (to.to_f - from.to_f))
# end