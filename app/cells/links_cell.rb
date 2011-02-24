class LinksCell < Cell::Rails

  def display
    @links = Link.order(:id).all
    render
  end

end
