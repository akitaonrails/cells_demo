class PagesController < ApplicationController
  before_filter :load_sidebar

  def index
    @page = Page.by_slug("homepage")
    render :action => "show"
  end

  def show
    @page = Page.by_slug(params[:id])
  end

private

  def load_sidebar
    @advertising = Advertising.random
    @poll = if params[:id]
      Poll.last
    else
      Poll.first
    end
    @links = Link.order(:id).all
  end
end
