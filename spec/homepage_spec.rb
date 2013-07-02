require 'spec_helper'

describe 'Dealfish Homepage', :type => :feature do
	it 'should show thailand map', :js => true do
		page.driver.browser.manage.window.resize_to(980, 600)
		visit 'http://www.dealfish.co.th'
		page.should have_xpath("//div[@id='Map_blind']")
		page.should have_xpath("//h1/a/img[@alt='Dealfish Logo']")
	end

	it 'should show thailand map', :js => true do
		page.driver.browser.manage.window.resize_to(768, 600)
		visit 'http://www.dealfish.co.th'
		page.should_not have_xpath("//div[@id='Map_blind']")
		page.should have_xpath("//h1/a/img[@alt='Dealfish Logo']")
	end

	it 'should show thailand map', :js => true do
		page.driver.browser.manage.window.resize_to(480, 600)
		visit 'http://www.dealfish.co.th'
		page.should_not have_xpath("//div[@id='Map_blind']")
		page.should_not have_content('จังหวัด')
		page.should have_xpath("//h1/a/img[@alt='Dealfish Logo']")
	end
end