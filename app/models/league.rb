class League < ActiveRecord::Base
  attr_accessible :league_name

  has_many :fixtures
end
