require 'spec_helper'

feature "Manage Movies" do

	background do
		Movie.create(title: "Star Trek", year: 1979)
	end

	scenario "View all movies as a visitor" do
		#capybara method
		visit movies_path
		expect(page).to have_content("All Movies")
		expect(page).to have_content("Star Trek")
		expect(page).to have_content("1979")
	end

	scenario "Add a new movie" do
		visit movies_path
		click_link 'Add Movie'
		fill_in 'Title', with: 'Gravity'
		fill_in 'Year', with: '2013'
		click_on 'Add Movie'
		expect(page).to have_content("Gravity")
		expect(page).to have_content("2013")
	end
end
