require 'spec_helper'
#require 'capybara-webkit'
#Capybara.javascript_driver = :webkit

describe 'Dealfish Homepage', :type => :feature do
	it 'should show thailand map', :js => true do
		page.driver.resize_window(1024, 600)
		visit 'http://www.dealfish.co.th'
		page.should have_xpath("//div[@id='Map_blind']")
		page.should have_xpath("//h1/a/img[@alt='Dealfish Logo']")
	end

	it 'should show thailand map', :js => true do
		page.driver.resize_window(768, 600)
		visit 'http://www.dealfish.co.th'
		page.should_not have_xpath("//div[@id='Map_blind']")
		page.should have_xpath("//h1/a/img[@alt='Dealfish Logo']")
	end

	it 'should show thailand map', :js => true do
		page.driver.resize_window(480, 600)
		visit 'http://www.dealfish.co.th'
		page.should_not have_xpath("//div[@id='Map_blind']")
		page.should_not have_content('จังหวัด')
		page.should have_xpath("//h1/a/img[@alt='Dealfish Logo']")
	end
end