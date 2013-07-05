class X12Controller < ApplicationController
  def form
    @x12 = X12.new
  end

  def post_result
    strong_params = params.require(:x12).permit(:x12_post)
    @result = Eligible::X12.post strong_params

  end

end
