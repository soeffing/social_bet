class Bettle < ActiveRecord::Base
  attr_accessible :accepted, :expire_time, :fixture_id, :free_bet, :maker_id, :taker_id, :win_maker, :win_taker
end
