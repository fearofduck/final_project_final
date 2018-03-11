class Forecast < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  belongs_to :ds53_ct

  belongs_to :user

  # Indirect associations

  # Validations

end
