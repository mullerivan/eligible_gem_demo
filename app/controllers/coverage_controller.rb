class CoverageController < ApplicationController
  def all

    params = {
        service_type: "33",
        network: "OUT",
        payer_id: '000001',
        provider_last_name: 'Last',
        provider_first_name: "First",
        provider_npi: "12345678",
        member_id: "12345678",
        member_last_name: "Austen",
        member_first_name: "Jane",
        member_dob: '1955-12-14'
    }

    @coverage = Eligible::Coverage.get(params)

  end
end
