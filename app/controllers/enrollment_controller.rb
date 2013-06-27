class EnrollmentController < ApplicationController
  def form

  end
  def post

  end
  def retrieve

    end
  def retrieve_post
    strong_params = params.require(:q)

    params = { 'enrollment_request_id' => strong_params }

    @enrollment = Eligible::Enrollment.get(params)
  end
end
