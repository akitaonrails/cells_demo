class PollCell < Cell::Rails

  def display
    @poll = if params[:id]
      Poll.last
    else
      Poll.first
    end
    render
  end

end
