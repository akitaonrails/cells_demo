class Advertising < ActiveRecord::Base
  validates_presence_of :company, :image_url, :url

  def self.random
    if (c = count) > 0
      offset(rand(c)).first
    end
  end

  def impression!
    self.impressions += 1
    save!
  end

  def click!
    self.click_throughs += 1
    save!
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

