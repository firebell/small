require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_title('Home')
      expect(page).to have_content('my best home page')
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('help page')
      expect(page).to have_title('Help')
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('about us')
      expect(page).to have_title('About Us')
    end
  end

end
