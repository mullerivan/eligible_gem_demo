class ClaimController < ApplicationController
  rescue_from Eligible::APIError   , with: :api_error

  def form
    @claim = Claim.new
    redirect_to :back, error: 'TO DO....'
  end

  def post

  end

  def retrieve
    @claim = Claim.new
  end

  def retrieve_get
    strong_params = params.require(:claim).permit(:reference_id)
    @claim = Eligible::Claim.get(strong_params)
  end
  protected
  def api_error(exception)
    redirect_to :back, error: exception.message
  end
end
