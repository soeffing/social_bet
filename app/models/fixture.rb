class Fixture < ActiveRecord::Base
  attr_accessible :date, :league_id, :team_1_id, :team_2_id
  belongs_to :home_team, :class_name => "Team" , :foreign_key => 'team_1_id' 
  belongs_to :abroad_team , :class_name => "Team", :foreign_key => 'team_2_id' 



  def self.search(search_term)
    where('team_1_id IN (?) OR team_2_id IN (?)', Team.where('team_name LIKE ?', '%'+search_term+'%').select('id'), Team.where('team_name LIKE ?', '%'+search_term+'%').select('id'))
  end

end