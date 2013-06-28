class Claim
  include ActiveModel::Model
  attr_accessor :reference_id
  validates :reference_id, presence: true
end