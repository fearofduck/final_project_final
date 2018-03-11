class Comment < ApplicationRecord
  # Direct associations

  belongs_to :forecast

  belongs_to :user

  # Indirect associations

  # Validations

end
