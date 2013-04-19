require 'spec_helper'

 describe "Users" do
   describe "GET Start Page" do
     it "authenticaed user" do
        visit "/users/new"
        page.should have_content("Sign in with Facebook")
       #response.status.should be(200)
     end
   end
 end
