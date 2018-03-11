class User < ApplicationRecord
  # Direct associations

  has_many   :forecasts,
             :dependent => :destroy

  has_many   :ds53_cts,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
