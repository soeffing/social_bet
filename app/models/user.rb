class User < ActiveRecord::Base
  #attr_accessible :balance, :email, :first_name, :last_name, :username, :uid, :provider, :name, :oauth_token, :oauth_token_expires_at
  has_many :made_bettles, :class_name => "Bettle", :foreign_key => 'maker_id' 
  has_many :taken_bettles, :class_name => "Bettle", :foreign_key => 'taker_id'

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
    user.provider = auth.provider
    user.uid = auth.uid
    user.name = auth.info.name
    user.oauth_token = auth.credentials.token
    user.oauth_token_expires_at = Time.at(auth.credentials.expires_at)
    user.save!
  end
end
end
