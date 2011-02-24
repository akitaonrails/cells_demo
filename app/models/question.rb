class Question < ActiveRecord::Base
  belongs_to :poll
  validates_presence_of :name

  def vote!
    self.votes += 1
    save!
  end
end

# == Schema Information
#
# Table name: questions
#
#  id         :integer         not null, primary key
#  poll_id    :integer
#  name       :string(255)
#  votes      :integer         default(0)
#  created_at :datetime
#  updated_at :datetime
#

