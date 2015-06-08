class User < ActiveRecord::Base
  validates :name, presence: true
  has_many :shifts
  has_secure_password
  after_initialize :default_password

  def default_password
    self.password ||= "pw" if self.new_record?
  end

  enum role: %w(hero admin)
end
