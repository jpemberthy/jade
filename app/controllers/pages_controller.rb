class PagesController < ApplicationController
  before_filter { @page = params[:page] }

  def index; end

  def show
    render @page
    rescue ActionView::MissingTemplate
      render :file => PAGE_404, :status => 404
  end
end

