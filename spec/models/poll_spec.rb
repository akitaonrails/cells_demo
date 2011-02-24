require 'spec_helper'

describe Poll do
  it "should increment number of votes" do
    @question = Factory(:poll_with_question).questions.first
    expect { @question.vote! }.to change(@question, :votes).by(1)
  end
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

