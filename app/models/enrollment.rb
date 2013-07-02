class Enrollment < ActiveRecord::Base
  #include ActiveModel::Model

  attr_accessor :enrollment_request_id, :service_provider_attributes
  has_many :service_provider
  accepts_nested_attributes_for :service_provider, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true

  validates :enrollment_request_id, presence: true
end