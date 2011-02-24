class Page < ActiveRecord::Base
  validates_presence_of :title

  def self.by_slug(slug)
    where(:slug => slug).first
  end
end

# == Schema Information
#
# Table name: pages
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  body_html  :text
#  created_at :datetime
#  updated_at :datetime
#

