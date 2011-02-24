require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    Factory(:homepage)
    Factory(:about)
    ActionView::Base.class_eval do
      def render_cell(name, state, *args, &block)
        ""
      end
    end
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
