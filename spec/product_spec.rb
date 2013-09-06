require 'spec_helper'
require 'capybara-webkit'
Capybara.javascript_driver = :webkit

describe 'Dealfish Product - Car', :type => :feature do

  before :each do
    visit 'http://www.dealfish.co.th/c11p9-auto-car'
    first('li.listing-product').find('h2 > a').click
  end

  it 'should have at least 1 image', :js => true do
    within 'div[id=thumb]' do
      should have_at_least(1).have_css('div > a > img')
    end
  end

  it 'should have all car\'s attribute', :js => true do
    page.should have_content('สภาพสินค้า :')
    page.should have_content('ประเภท :')
    page.should have_content('ยี่ห้อ :')
    page.should have_content('รุ่น :')
    page.should have_content('ปี :')
    page.should have_content('เชื้อเพลิง :')
  end
end