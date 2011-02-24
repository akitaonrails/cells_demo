# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :advertising do |f|
  f.company "Nike"
  f.image_url "/images/nike.jpg"
  f.url "http://www.nike.com"
  f.impressions 1
  f.click_throughs 1
end
