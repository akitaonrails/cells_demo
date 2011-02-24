require 'spec_helper'

describe PollsController do

  describe "GET 'update'" do
    it "should be successful" do
      @poll = Factory(:poll_with_question)
      @question = @poll.questions.first
      put 'update', :id => @poll.id, :question => { :id => @question.id }
      @question = Question.find(@question.id) # FIXME: there is no reload! in factory?
      @question.votes.should be(2)
      response.status.should be(302)
    end
  end

end
