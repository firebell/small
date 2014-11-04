include ApplicationHelper

def valid_signin(user)
  fill_in "Email",    with: user.email
  fill_in "Password", with: user.password
  click_button "Sign in"
end

RSpec::Matchers.define :have_error_message do |message|
  match do |page|
    expect(page).to have_selector('div.alert.alert-error', text: message)
  end
end

#RSpec::Matchers.define :have_all_static_pages_bahavour  do |options|
#  match do |page|
#    expect(page).to have_selector('h1', text: options[:selector12])
#    expect(page).to have_title(full_title(options[:title])) 
#  end
# end
