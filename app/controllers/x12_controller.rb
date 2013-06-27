class X12Controller < ApplicationController
  def form

  end
  def post_result
    strong_params = params.require(:q)

    @result = Eligible::X12.post strong_params
  end

end
