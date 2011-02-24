# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :question do |f|
  f.poll nil
  f.name "MyString"
  f.votes 1
end