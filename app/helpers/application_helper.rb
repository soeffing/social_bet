module ApplicationHelper

 def get_leagues
     leagues = League.find(:all)
  
     c_select_hash = Hash.new
   
     
     leagues.each do |c| 
       c_select_hash[c.league_name ] = c.id.to_s
     end 
   return c_select_hash
 end

end
