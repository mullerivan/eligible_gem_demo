class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action do
    unless session[:api_key].nil?
      Eligible.api_key = session[:api_key]
      Eligible.test = session[:test]
    end
  end


  def welcome

  end

  def welcome_save
    session[:api_key]    = params[:api_key]
    session[:test]       = params[:test]
    session[:first_name] = params[:first_name]
    session[:last_name]  = params[:last_name]

    flash[:message] = 'Data was saved successfully'
    redirect_to demographic_form_url

  end
end

