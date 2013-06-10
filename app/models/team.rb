class Team < ActiveRecord::Base
  #attr_accessible :team_name, :id
  has_many :home_games, :class_name => "Fixture", :foreign_key => 'team_1_id' 
  has_many :abroad_games, :class_name => "Fixture", :foreign_key => 'team_2_id'
end
