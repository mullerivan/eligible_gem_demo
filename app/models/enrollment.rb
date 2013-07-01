class Enrollment
  include ActiveModel::Model
  attr_accessor :enrollment_request_id, :facility_name, :provider_name, :npi,:tax_id,:address, :city, :state, :zip, :ptan

  validates :enrollment_request_id, presence: true
end