class EnrollmentController < ApplicationController
  def form
    @enrollment = Enrollment.new
  end

  def post
    strong_params = params.require(:enrollment).permit(:facility_name, :provider_name, :npi, :tax_id, :address, :city, :state, :zip, :ptan)

    @enrrolment_post = Eligible::Enrollment.post(strong_params)
  end

  def retrieve
    @enrollment = Enrollment.new
  end

  def retrieve_get
    strong_params = params.require(:enrollment).permit(:enrollment_request_id)
    @enrollment = Eligible::Enrollment.get(strong_params)
  end
end
