require 'spec_helper'

feature "Register New User" do

	scenario "Create a New User" do
		visit new_user_registration_path
	end

end
