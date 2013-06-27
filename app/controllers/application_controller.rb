class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action do
    Eligible.api_key = 'ccca002e-9e02-4855-80b5-11ec513634bd'
    Eligible.test = true
  end

end
