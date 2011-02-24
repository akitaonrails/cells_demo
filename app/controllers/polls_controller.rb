class PollsController < ApplicationController
  def update
    @poll = Poll.find(params[:id])
    @question = @poll.questions.find(params[:question][:id])
    @question.vote!
    redirect_to request.referer
  end

end
