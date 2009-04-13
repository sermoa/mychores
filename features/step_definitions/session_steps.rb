Given /^I am not logged in$/ do
  visit '/admin/logout'
end

Given /^I am logged in as '(.+)'$/ do |person|
  person = Person.find_by_name(person)
  visit 'admin/logout'
  click_link 'Log in'
  fill_in 'Login ID', :with => person.login
  fill_in 'Password', :with => '12345'
  click_button 'Log in'
end

When /^I log out$/ do
  click_link 'Log out'
end

Then /^I should be logged in$/ do
  session[:person].should_not be_nil
end


Then /^I should NOT be logged in$/ do
  session[:person].should be_nil
end

