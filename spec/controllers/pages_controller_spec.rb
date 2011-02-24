require 'spec_helper'

describe PagesController do
  render_views

  before(:all) do
    Factory(:homepage)
    Factory(:about)

    # data for sidebar
    Factory(:advertising)
    Factory(:poll_with_question)
    Factory(:link)
  end

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
      response.body.should match("homepage")
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
      get 'show', :id => "about"
      response.should be_success
      response.body.should match("about")
    end
  end

end
