class EnrollmentController < ApplicationController
  def form
    @enrollment = Enrollment.new
  end

  def post

  end

  def retrieve
    @enrollment = Enrollment.new
  end

  def retrieve_get
    strong_params = params.require(:enrollment).permit(:enrollment_request_id)
    @enrollment = Eligible::Enrollment.get(strong_params)
  end
end
