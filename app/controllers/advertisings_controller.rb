class AdvertisingsController < ApplicationController
  def update
    @advertising = Advertising.find(params[:id])
    @advertising.click!
    redirect_to @advertising.url
  end

end
