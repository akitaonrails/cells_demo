require 'spec_helper'

describe PollCell do
  context "cell rendering" do 
    context "rendering display" do
      before do
        @poll = Factory(:poll_with_question)
      end
      
      subject { render_cell(:poll, :display) }
  
      it { should have_selector("h1", :content => @poll.name) }
      it { should match(@poll.questions.first.name) }
    end
  end

  context "cell instance" do 
    subject { cell(:poll) } 
    it { should respond_to(:display) }
  end
end
