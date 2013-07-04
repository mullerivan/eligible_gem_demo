class PaymentController < ApplicationController
  add_flash_types :error
  rescue_from Eligible::APIError   , with: :api_error
  def status
    @payment = Payment.new()
  end

  def status_get
    strong_params = params.require(:payment).permit(:payment_request_id)
    p = {:reference_id => strong_params[:payment_request_id]}
    @payment = Eligible::Payment.get(p)
  end
  protected
  def api_error(exception)
    redirect_to :back, error: exception.message
  end
end
