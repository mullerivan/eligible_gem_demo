class X12
  include ActiveModel::Model
  attr_accessor :x12_post

  validates :x12_post, presence: true
end