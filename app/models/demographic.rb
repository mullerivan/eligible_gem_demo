class Demographic
  include ActiveModel::Model
  attr_accessor :payer_name, :payer_id, :provider_last_name, :provider_first_name, :provider_npi, :member_id, :member_last_name, :member_first_name, :member_dob, :member_gender, :internal_id
  validates :payer_name, presence: true
  validates :payer_id, presence: true
  validates :provider_last_name, presence: true
  validates :provider_first_name, presence: true
  validates :provider_npi, presence: true
  validates :member_id, presence: true
  validates :member_last_name, presence: true
  validates :member_first_name, presence: true
  validates :member_dob, presence: true
  validates :member_gender, presence: true
end