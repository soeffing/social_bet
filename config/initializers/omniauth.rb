OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '110228175726004', '076eabf53203abde9fb31fefb69e285a',
  :scope => 'email,user_birthday,read_stream', :display => 'popup'
end