require 'spec_helper'

describe LinksCell do
  context "cell rendering" do 
    context "rendering display" do
      before do
        Factory(:link)
      end
      
      subject { render_cell(:links, :display) }
  
      it { should have_selector("h1", :content => "Links") }
      it { should match("Google") }
    end
  end

  context "cell instance" do 
    subject { cell(:links) } 
    it { should respond_to(:display) }
  end
end
