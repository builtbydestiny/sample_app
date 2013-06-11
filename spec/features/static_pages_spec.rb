require 'spec_helper'

describe "Static pages" do 
let(:base_title) { "Ruby on Rails Tutorial Sample App" } 
  
    # --------- TEST HOME PAGE -------
    describe "Homepage" do 

        it " Should have the h1 'Sample App' " do 
           visit '/static_pages/home'
           page.should have_selector('h1', :text => 'Sample App') 
        end

        it " Should not have long title '| Sample App' " do 
           visit '/static_pages/home'
           page.should_not have_title("#{base_title} | Home")
        end

        it "Should have base title " do 
            visit '/static_pages/home'
            page.should have_title("#{base_title}")
        end
    end
    
    # --------- TEST HELP PAGE -------
    describe "Help Page" do 

        it " Should have the h1 'Help' " do 
           visit '/static_pages/help'
           page.should have_selector('h1', :text => 'Help') 
        end

        it " Should have title 'Help' " do 
           visit '/static_pages/help'
           page.should have_title("#{base_title} | Help")
        end
    end 

    # --------- TEST ABOUT PAGE -------
    describe "About page" do 

        it " Should have the h1 'About' " do 
           visit '/static_pages/about'
           page.should have_selector('h1', :text => 'About') 
        end

        it " Should have title 'About' " do 
           visit '/static_pages/about'
           page.should have_title("#{base_title} | About")
        end
    end  

    # --------- TEST CONTACT PAGE -------
    describe "Contact Page" do 
        
        it "Should have h1 'Contact' " do 
            visit '/static_pages/contact' 
            page.should have_selector('h1', :text => 'Contact')
        end

        it "Should have title 'Contact' " do 
            visit '/static_pages/contact'
            page.should have_title("#{base_title} | Contact")
        end
    end
end
