class Platform < ActiveRecord::Base

  default_scope :order => 'name ASC'

  def add_platforms
    @platforms = client.platform.platforms.platform

    @platforms.each do |platform|
      Platform.create(:platform_tag => platform.platform_tag,
        :platform_no => platform.platform_no,
        :name => platform.name,
        :bearing_to_road => platform.bearing_to_road,
        :road_name => platform.road_name,
        :lat => platform.position.lat,
        :long => platform.position.long)
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
