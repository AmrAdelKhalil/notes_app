class HyperLinksController < ApplicationController
  def show
    @hyperlink = HyperLink.includes(:note).where(uuid: params[:id]).first
  end
end
