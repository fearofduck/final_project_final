class Ds53Ct < ApplicationRecord
  # Direct associations

  has_many   :forecasts,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
