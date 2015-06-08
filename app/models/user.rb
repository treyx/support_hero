class User < ActiveRecord::Base
  validates :name, presence: true
  has_many :shifts
  has_secure_password

  enum role: %w(hero admin)
end
