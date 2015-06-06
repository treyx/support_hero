class Shift < ActiveRecord::Base
  validates :date, :user_id, presence: true
  validate :date_cannot_be_in_the_past

  belongs_to :user

  def date_cannot_be_in_the_past
    errors.add(:date, "can't be in the past") if
      !date.blank? && date.to_date < Date.today
  end
end
