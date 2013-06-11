require 'spec_helper'

describe "Static pages" do 
subject { page }

    let(:base_title) { "Ruby on Rails Tutorial Sample App" } 

    # --------- TEST HOME PAGE -------
    describe "Homepage" do 
    before(:each) { visit root_path }

        it { should have_selector('h1', text: 'Sample App') } 
        it { should have_title(full_title('')) }
        it { should_not have_title("#{base_title} | Home") }

    end
    
    # --------- TEST HELP PAGE -------
    describe "Help Page" do 
    before(:each) { visit help_path }

        it { should have_selector('h1', text: 'Help') }
        it { should have_title("#{base_title} | Help") }

    end 

    # --------- TEST ABOUT PAGE -------
    describe "About page" do 
    before(:each) { visit about_path }

        it { should have_selector('h1', text: 'About') }
        it { should have_title("#{base_title} | About") }

    end  

    # --------- TEST CONTACT PAGE -------
    describe "Contact Page" do 
    before(:each) { visit contact_path }

        it { should have_selector('h1', text: 'Contact') } 
        it { should have_title(full_title('Contact')) }
    end
end
