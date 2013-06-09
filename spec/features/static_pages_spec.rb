require 'spec_helper'

describe "Static pages" do 
  
    describe "Homepage" do 

        it " Should have the h1 'Sample App' " do 
           visit '/static_pages/home'
           page.should have_selector('h1', :text => 'Sample App') 
        end

        it " Should have title 'Sample App' " do 
           visit '/static_pages/home'
           page.should have_title('Ruby on Rails Tutorial Sample App | Home')
        end
    end

    describe "Help Page" do 

        it " Should have the h1 'Help' " do 
           visit '/static_pages/help'
           page.should have_selector('h1', :text => 'Help') 
        end

        it " Should have title 'Help' " do 
           visit '/static_pages/help'
           page.should have_title('Ruby on Rails Tutorial Sample App | Help')
        end
    end

    describe "About page" do 

        it " Should have the h1 'About' " do 
           visit '/static_pages/about'
           page.should have_selector('h1', :text => 'About') 
        end

        it " Should have title 'About' " do 
           visit '/static_pages/about'
           page.should have_title('Ruby on Rails Tutorial Sample App | About')
        end
    end
end