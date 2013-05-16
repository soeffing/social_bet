class League < ActiveRecord::Base
  #attr_accessible :league_name, :id

  has_many :fixtures
end
