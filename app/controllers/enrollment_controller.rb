class EnrollmentController < ApplicationController
  def form
    @enrollment = Enrollment.new
    @enrollment.service_provider.build

  end

  def post
    a=params[:enrollment].to_a
    b=a[0].to_a
    a = b[1].to_a
    service_provider_list = Array.new
    payer_ids = Array.new
    a.each do |s|
      service_provider = s[1]
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
  end
end
