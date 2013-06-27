class ClaimController < ApplicationController

#  Retrieve individual Claim object/acknowledgment
  def form

  end
  def post

  end
  def retrieve

  end
  def retrieve_get
    strong_params = params.require(:q)

    params = { 'reference_id ' => strong_params }

    @claim = Eligible::Claim.get(params)
  end
end
