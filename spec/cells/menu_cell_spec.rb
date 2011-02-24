require 'spec_helper'

describe MenuCell do
  context "cell rendering" do 
    context "rendering display" do
      before do
        @homepage = Factory(:homepage)
        @about = Factory(:about)
      end
      
      subject { render_cell(:menu, :display, @about) }
      it { should_not match("<li class=\"highlight\"><span class=\"menu_r\"><a href=\"/\"><span class=\"menu_ar\">Homepage</span></a></span></li>") }
  
      it { should match("<li class=\"highlight\"><span class=\"menu_r\"><a href=\"/pages/about\"><span class=\"menu_ar\">About Us</span></a></span></li>") }
    end
    
  end

  context "cell instance" do 
    subject { cell(:menu) } 
    it { should respond_to(:display) }
  end
end
