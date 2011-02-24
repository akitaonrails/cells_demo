# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :homepage, :class => :page do |f|
  f.title "homepage"
  f.slug "homepage"
  f.body_html "hello world"
end

Factory.define :about, :class => :page do |f|
  f.title "about"
  f.slug "about"
  f.body_html "hello world"
end
