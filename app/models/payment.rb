class Payment
  include ActiveModel::Model
  attr_accessor :payment_request_id
  validates :payment_request_id, presence: true
end