class Platform < ActiveRecord::Base

  default_scope :order => 'name ASC'

  def add_platforms
    @platforms = client.platform.platforms.platform

    @platforms.each do |platform|
      platforms = Platform.new
      platforms.platform_tag = platform.platform_tag
      platforms.platform_no = platform.platform_no
      platforms.name = platform.name
      platforms.bearing_to_road = platform.bearing_to_road
      platforms.road_name = platform.road_name
      platforms.lat = platform.lat
      platforms.long = platform.long
      platforms.save
    end
  end

  def route_et(platform)
    @platform_info = client.route_position_et({:platformno => platform})
    @platform_info.route_position_et.platform
  end

  def arrival_scope(platform)
    @platform_info = client.route_position_et({:platformno => platform})
    @platform_info.route_position_et.content.max_arrival_scope
  end

  private

  def client
    @client ||= Connexionz::Client.new({:endpoint => "http://12.233.207.166/"})
  end
end
