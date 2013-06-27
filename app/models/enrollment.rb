class Enrollment
  include ActiveModel::Model
  attr_accessor :enrollment_request_id

  validates :enrollment_request_id, presence: true
end