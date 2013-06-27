class PaymentController < ApplicationController
  def status
    @payment = Payment.new()
  end

  def status_get
    strong_params = params.require(:payment).permit(:payment_request_id)
    p = {:reference_id => strong_params[:payment_request_id]}
    @payment = Eligible::Payment.get(p)
  end
end
