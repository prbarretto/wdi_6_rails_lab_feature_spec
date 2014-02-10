require 'spec_helper'

feature "Register New User" do

	scenario "Create a New User" do
		visit root_path
		# visit new_user_registration_path
		click_on "Sign up"
		save_and_open_page
		expect(page).to have_content("Sign up")
		fill_in "Email", with: "bob@example.com"
		fill_in "Password", with: "password"
		fill_in "Password confirmation", with: "password"
		click_button "Sign up"
		expect(page).to have_content("All Movies")
	end
end
