class Link < ActiveRecord::Base
  validates_presence_of :name, :url
end

# == Schema Information
#
# Table name: links
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  url        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

