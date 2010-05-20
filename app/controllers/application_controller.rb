class ApplicationController < ActionController::Base
  helper :all # include all helpers
  
  protect_from_forgery
end
