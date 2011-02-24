require 'spec_helper'

describe Page do
  it "should find page by slug" do
    @page = Factory(:homepage)
    Page.by_slug(@page.slug).title.should == @page.title
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

