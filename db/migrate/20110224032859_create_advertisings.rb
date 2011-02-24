class CreateAdvertisings < ActiveRecord::Migration
  def self.up
    create_table :advertisings do |t|
      t.string :company
      t.string :image_url
      t.string :url
      t.integer :impressions, :default => 0
      t.integer :click_throughs, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :advertisings
  end
end
