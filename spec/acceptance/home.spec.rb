require 'acceptance/acceptance_helper'

feature 'Home', %q{
	We want to test that everything on  the home page is listing correctly
	} do


		scenario 'At Home page i Shoud see the top Menu' do
			visit root_path
			page.should have_link "Home"
			page.should have_button "About us"
			page.should have_css "#carousel"
		end

		scenario 'Be able to See products page with some products listed', :js => true do
			visit root_path 'Quote Generator'
			current_path.should == root_path
			1..5.each do |it|
				page.should have_content "Item code 000#{it}"
			end	
			
		end

		scenario 'Be able to See products page with some products with its images', :js => true do
			visit root_path 'Quote Generator'
			current_path.should == root_path
			1..5.each do |it|
				page.should have_image "medium_photo_#{it}.png"
			end	
			
		end


		scenario 'At Home I want to visit About us' do
			visit root_path
			click_link "About us"
			current_path.should == about_us_path
			page.should have_content "about us"
		end
end