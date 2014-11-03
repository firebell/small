require 'spec_helper'
require 'support/utilities.rb'

describe "UserPages" do
  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "signup page" do
    before { visit signup_path }
    let(:heading)    { 'Sign Up' }
    let(:page_title) { 'Sign Up' }

    it_should_behave_like "all static pages"
  end
end
