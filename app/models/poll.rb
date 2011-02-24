class Poll < ActiveRecord::Base
  has_many :questions
  validates_presence_of :name
end

# == Schema Information
#
# Table name: polls
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

