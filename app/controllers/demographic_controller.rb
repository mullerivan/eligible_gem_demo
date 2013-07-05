class DemographicController < ApplicationController

  def form
    @demographic = Demographic.new
  end

  def get
    strong_params =params.require(:demographic).permit(:payer_name, :payer_id, :provider_last_name, :provider_first_name, :provider_npi, :member_id, :member_last_name, :member_first_name, :member_dob, :member_gender, :internal_id)
    @demographic = Eligible::Demographic.get(strong_params)
  end
end
