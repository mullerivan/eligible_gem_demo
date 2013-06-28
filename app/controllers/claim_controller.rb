class ClaimController < ApplicationController


  def form

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
end
