require 'spec_helper'

describe AdvertisingsController do

  describe "GET 'update'" do
    it "should be redirected and counter should increase" do
      @advertising = Factory(:advertising)
      put 'update', :id => @advertising.id
      response.should redirect_to(@advertising.url)
      @advertising = Advertising.find(@advertising.id) # FIXME: there is no reload! in factory?
      @advertising.click_throughs.should be(2)
    end
  end

end
