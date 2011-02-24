require 'spec_helper'

describe AdvertisingCell do  
  context "cell rendering" do 
    context "rendering display" do
      before(:each) do
        Factory(:advertising)
        Advertising.
          should_receive(:random).
          and_return(Factory(:advertising))
      end

      subject { render_cell(:advertising, :display) }
  
      it { should have_selector("h1", :content => "Advertising") }
      it { should match("Nike") }
      it { should match("Impressions: 2") }
      it { should match("Click Through: 1") }
    end
  end


  context "cell instance" do 
    subject { cell(:advertising) } 
    
      it { should respond_to(:display) }
    
  end
end
