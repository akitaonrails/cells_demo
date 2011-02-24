require 'spec_helper'

describe PagesController do
  render_views

  before(:all) do
    Factory(:homepage)
    Factory(:about)

    # data for sidebar
    Factory(:advertising)
    @poll = Factory(:poll_with_question)
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
  
  context "sidebar" do
    subject do
      get 'show', :id => "about"
      response.body
    end

    describe "test advertising" do
      it { should match("<h1>Advertising</h1>") }
      it { should match("Nike") }
      it { should match("Impressions: 2") }
      it { should match("Click Through: 1") }
    end
    
    describe "test polls" do
      it { should match("<h1>#{@poll.name}</h1>") }
      it { should match(@poll.questions.first.name) }
    end

    describe "test links" do
      it { should match("<h1>Links</h1>") }
      it { should match("Google") }
    end
    
    describe "test menu" do
      it { should_not match("<li class=\"highlight\"><span class=\"menu_r\"><a href=\"/\"><span class=\"menu_ar\">Homepage</span></a></span></li>") }

      it { should match("<li class=\"highlight\"><span class=\"menu_r\"><a href=\"/pages/about\"><span class=\"menu_ar\">About Us</span></a></span></li>") }
    end
  end
end
