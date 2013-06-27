class PaymentController < ApplicationController
  def status

  end

  def status_get
    strong_params = params.require(:q)
    params = { :reference_id => strong_params }

    @payment = Eligible::Payment.get(params)
  end
end
