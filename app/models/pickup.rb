class Pickup < ApplicationRecord
  belongs_to :user

  before_validation :pickup_not_in_past, on: [:create, :update]
  
  enum status: {
    submitted: 0,  # database default
    accepted: 1,
    in_progress: 2,
    completed: 3
  }

  def pickup_not_in_past
    if self.pickup_date.blank? || self&.pickup_date < Date.today
      self.errors.add(:pickup_date, "must be set and can not be in the past")
    end
  end
end
