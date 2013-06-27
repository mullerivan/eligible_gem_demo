class DemographicController < ApplicationController

  def form

  end
  def get
    #ADD STRONG PARAMETERS                  
    #strong_params = params.require(:form).permit(all).permit(more)

    p = {
        payer_name: params[:payer_name],
        payer_id: params[:payer_id],
        provider_last_name: params[:provider_last_name],
        provider_first_name: params[:provider_first_name],
        provider_npi: params[:provider_npi],
        member_id: params[:member_id],
        member_last_name: params[:member_last_name],
        member_first_name: params[:member_first_name],
        member_dob: params[:member_dob],
        member_gender: params[:member_gender],
        internal_id: params[:internal_id]
    }

    @demographic = Eligible::Demographic.get(p)

  end
end
