Given /^I am signed in as a user$/ do

end

Given /^there are (\d+) items in that library$/ do |number|
  number.to_i.times do 
    create(:item)
  end
end

When /^I visit the homepage$/ do
  visit root_path
end

Then /^I should see (\d+) items$/ do |number|
  within "table.items" do
    page.should have_css("td.item_name", :count =>number)
  end
end

When /^I click on "([^"]*)"$/ do |link_name|
  click_link link_name
end

Then /^I should see the name "([^"]*)" and a description$/ do |name|
  page.should have_css ".item_name", text: name
  page.should have_css ".item_description"
end
