# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :poll do |f|
  f.name "my poll"
  f.description "add your vote"
end

Factory.define :question1, :class => :question do |q|
  q.name "nice"
  q.votes 1
end

Factory.define :question2, :class => :question do |q|
  q.name "bad"
  q.votes 2
end

Factory.define :poll_with_question, :parent => :poll do |poll|
  poll.after_create do |p|
    Factory(:question1, :poll => p)
    Factory(:question2, :poll => p)
  end
end
