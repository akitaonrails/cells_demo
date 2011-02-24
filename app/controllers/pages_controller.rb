class PagesController < ApplicationController
  def index
    @page = Page.by_slug("homepage")
    render :action => "show"
  end

  def show
    @page = Page.by_slug(params[:id])
  end
end
