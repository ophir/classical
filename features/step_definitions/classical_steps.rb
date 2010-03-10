Given /^composer "([^\"]*)"$/ do |composer_name|
  # pending # express the regexp above with the code you wish you had
  Composer.create! :name => composer_name
end
