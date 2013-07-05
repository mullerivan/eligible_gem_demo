class EnrollmentController < ApplicationController
  add_flash_types :error
  rescue_from Eligible::InvalidRequestError  , with: :invalid_parameters
  def form
    @enrollment = Enrollment.new
    @enrollment.service_provider.build
  end

  def post
    strong_params = params.require(:enrollment).permit(service_provider_attributes: [:facility_name, :provider_name, :npi,:tax_id,:address, :city, :state, :zip, :ptan, :payer_id])
    service_provider_list = Array.new
    payer_ids = Array.new
    strong_params.first.last.each do |service_provider_hash|
      service_provider = service_provider_hash[1]
      service_provider_each = {
          'facility_name' => service_provider[:facility_name],
          'provider_name' => service_provider[:provider_name],
          'tax_id' => service_provider[:tax_id],
          'address' => service_provider[:address],
          'city' => service_provider[:city],
          'state' => service_provider[:state],
          'zip' => service_provider[:zip],
          'ptan' => service_provider[:ptan],
          'npi' => service_provider[:npi]
      }
      payer_ids.push service_provider[:payer_id]
      service_provider_list.push service_provider_each
    end
    h = Hash.new
    h['service_provider_list'] = service_provider_list
    h['payer_ids']= payer_ids

    @enrrolment_post = Eligible::Enrollment.post(h)
  end

  def retrieve
    @enrollment = Enrollment.new
  end

  def retrieve_get
    strong_params = params.require(:enrollment).permit(:enrollment_request_id)
    @enrollment = Eligible::Enrollment.get(strong_params)

    if @enrollment.nil?
      redirect_to :back, error: 'Invalid response object from API: "Enrollment not found. Please send a valid reference_id." (HTTP response code was 404)'
    end

      end

  protected
  def invalid_parameters(exception)
    redirect_to :back, error: exception.message
  end
end
