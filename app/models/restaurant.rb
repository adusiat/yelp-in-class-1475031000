class Restaurant < ApplicationRecord
  # Direct associations

  has_one    :location

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
