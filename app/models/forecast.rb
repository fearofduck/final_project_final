class Forecast < ApplicationRecord
  # Direct associations

  belongs_to :ds53_ct

  belongs_to :user

  # Indirect associations

  # Validations

end
