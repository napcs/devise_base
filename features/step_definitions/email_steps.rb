Then /^an email should be sent to "([^\"]*)" with "([^\"]*)" in the body$/ do |email, text|
 ActionMailer::Base.deliveries.size > 0
 ActionMailer::Base.deliveries.last.to[0].should == email 
 ActionMailer::Base.deliveries.last.body.should include(text) 
end
