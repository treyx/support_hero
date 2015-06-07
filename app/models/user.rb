class User < ActiveRecord::Base
  validates :name, presence: true
  has_many :shifts
  has_secure_password
end
