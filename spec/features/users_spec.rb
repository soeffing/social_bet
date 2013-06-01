require 'spec_helper'

 describe "Users" do
   before(:each) do
     visit "/users/new" # root_path
   end
   describe "GET Start Page" do
     it "dont show new bettle button if not signed in" do
       page.should_not have_content("New Bettle")
     end
     it "authenticaed user" do
       page.should have_content("Sign in with Facebook")
       #response.status.should be(200)
     end
   end
 end
