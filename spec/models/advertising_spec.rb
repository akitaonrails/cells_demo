require 'spec_helper'

describe Advertising do
  it "should at least return one valid advertising object" do
    @ad = Factory(:advertising)
    Advertising.random.url.should == @ad.url
  end

  it "should increment the impressions counter" do
    @ad = Factory(:advertising)
    expect { @ad.impression! }.to change(@ad, :impressions).by(1)
  end

  it "should increment the click through counter" do
    @ad = Factory(:advertising)
    expect { @ad.click! }.to change(@ad, :click_throughs).by(1)
  end
end

# == Schema Information
#
# Table name: advertisings
#
#  id             :integer         not null, primary key
#  company        :string(255)
#  image_url      :string(255)
#  url            :string(255)
#  impressions    :integer         default(0)
#  click_throughs :integer         default(0)
#  created_at     :datetime
#  updated_at     :datetime
#

