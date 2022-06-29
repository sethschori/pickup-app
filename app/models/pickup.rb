class Pickup < ApplicationRecord
  belongs_to :user

  enum status: {
    submitted: 0,  # database default
    accepted: 1,
    in_progress: 2,
    completed: 3
  }

end
