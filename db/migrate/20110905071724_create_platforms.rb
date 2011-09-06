class CreatePlatforms < ActiveRecord::Migration
  def change
    create_table :platforms do |t|
      t.string :platform_tag
      t.string :platform_no
      t.string :name
      t.float  :bearing_to_road,:precision => 10, :scale => 6
      t.string :road_name
      t.float  :lat,:precision => 10, :scale => 6
      t.float  :long,:precision => 10, :scale => 6

      t.timestamps
    end
  end
end
