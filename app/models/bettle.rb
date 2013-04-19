class Bettle < ActiveRecord::Base
  attr_accessible :maker_id, :taker_id, :fixture_id, :free_bet, :win_maker, :win_taker, :accepted, :expiration_time, :bettle_status_id, :taker_outcome_id, :maker_outcome_id
  attr_accessor :days, :hours, :minutes

  belongs_to :maker, :class_name => "User" , :foreign_key => 'maker_id' 
  belongs_to :taker , :class_name => "User", :foreign_key => 'taker_id' 
  belongs_to :fixture, :foreign_key => 'fixture_id'


  validates :win_maker, :win_taker, :days, :hours, :minutes, :numericality => { :only_integer => true, :message => "only whole numbers (e.g. 1, 10 or 65)", :allow_nil => true }

end
