class ServiceProvider < ActiveRecord::Base
  #include ActiveModel::Model
  belongs_to :enrollment
  attr_accessor :facility_name, :provider_name, :npi,:tax_id,:address, :city, :state, :zip, :ptan, :payer_id
end