class PlatformsController < ApplicationController
  respond_to :html, :xml, :json

  def index
    if !params[:id].nil?
      redirect_to platform_path(params[:id])
    else
      @platforms = Platform.all
      respond_with(@platforms)
    end

  end

  def show
    @platforms = Platform.find_by_platform_no(params[:id])

    @route_et = Platform.new.route_et(params[:id])
    @arrival_scope = Platform.new.arrival_scope(params[:id])

    respond_with(@route_et)

  end

end
