module ApplicationHelper

 def get_leagues
     leagues = League.find(:all)
  
     c_select_hash = Hash.new
   
     
     leagues.each do |c| 
       c_select_hash[c.league_name ] = c.id.to_s
     end 
   return c_select_hash
 end

 def get_outcomes
     outcomes = Outcome.find(:all)
  
     c_select_hash = Hash.new
     
     outcomes.each do |c| 
       c_select_hash[c.en] = c.id 
     end 
   return c_select_hash
 end

end
