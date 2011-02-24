Page.create :title => "Homepage", :slug => "homepage", :body_html => File.read(File.join(Rails.root, "db/fixtures/homepage.html"))
Page.create :title => "About", :slug => "about", :body_html => File.read(File.join(Rails.root, "db/fixtures/about.html"))
Page.create :title => "Ad Hoc Page", :slug => "adhoc", :body_html => File.read(File.join(Rails.root, "db/fixtures/adhoc.html"))

Link.create :name => "Akita On Rails Blog", :url => "http://www.akitaonrails.com"
Link.create :name => "Gonow Tecnologia", :url => "http://www.gonow.com.br"
Link.create :name => "Ruby Inside", :url => "http://www.rubyinside.com"
Link.create :name => "Rails Casts", :url => "http://www.railscasts.com"
Link.create :name => "Ruby on Rails", :url => "http://www.rubyonrails.org"

@poll = Poll.create :name => "Rate this Website", :description => "This is a brand new website, what is your opinion about it?"
@poll.questions.create :name => "This is Great!"
@poll.questions.create :name => "Kinda like it"
@poll.questions.create :name => "Could be worse"
@poll.questions.create :name => "Awful! What were you thinking??"

@poll = Poll.create :name => "Day of the week", :description => "What is your favorite day of the week?"
@poll.questions.create :name => "Monday"
@poll.questions.create :name => "Tuesday"
@poll.questions.create :name => "Thursday"
@poll.questions.create :name => "Friday"

Advertising.create :company => "Apple", :image_url => "/images/advertisings/apple.jpg", :url => "http://www.apple.com"
Advertising.create :company => "Microsoft", :image_url => "/images/advertisings/microsoft.jpg", :url => "http://www.microsoft.com"
Advertising.create :company => "Google", :image_url => "/images/advertisings/google.jpg", :url => "http://www.google.com"
Advertising.create :company => "Nike", :image_url => "/images/advertisings/nike.jpg", :url => "http://www.nike.com"
Advertising.create :company => "Gonow", :image_url => "/images/advertisings/gonow.jpg", :url => "http://www.gonow.com.br"
