class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: ENV.fetch("USER"), password: ENV.fetch("PASSWORD")
end
