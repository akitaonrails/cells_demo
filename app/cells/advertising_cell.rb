class AdvertisingCell < Cell::Rails

  def display
    @advertising = Advertising.random
    render
  end

end
