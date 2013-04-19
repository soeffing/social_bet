require 'spec_helper'

describe "Bettle" do
  #before(:each) do 
      #controller.request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:facebook] 
   #end

  describe "GET /bettles/new", :js => true do
  	before(:each) do
      visit "/users/new"
      set_omniauth()
      click_link "Sign in with Facebook"
   	end
    it "show new bettle button only after auth" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      
      current_path.should eq(root_path)
      page.should have_content("New Bettle")
      # response.status.should be(200)
    end

    it "team search new bettle" do
      click_link "New Bettle"
      within('div.ui-dialog') do 
        fill_in 'search_term' , :with => 'zara'
        page.should have_content('Zaragoza')
        fill_in 'search_term' , :with => ''
        page.should have_content('')
         fill_in 'search_term' , :with => 'saDJJADS032003'
        page.should have_content('No team found')
      end 
     end

     it "carries over selected fixture to step 2" do
       click_link "New Bettle"
       fill_in 'search_term', :with => "Barcelona"
       find(:id, "fixture_list").find(:id, 'fixture_37').click
       page.execute_script("transition_step(2)")
       page.should have_content('Betis')
    end
  end
end










def set_omniauth(opts = {})
  OmniAuth.config.test_mode = true

  OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new({
    :provider => 'facebook',
    :uid => '506919768',
    :user_info => {"name" => "Ulrich Soeffing", "nickname" => 'btaylor'},
    'credentials' => {:token => 'plataformatec', :expires_at => 12822930303},
    :info => {"name" => "soeffing"}
  })
end
 
def set_invalid_omniauth(opts = {})
 
  credentials = { :provider => :facebook,
                  :invalid  => :invalid_crendentials
                 }.merge(opts)
 
  OmniAuth.config.test_mode = true
  OmniAuth.config.mock_auth[credentials[:provider]] = credentials[:invalid]
 
end