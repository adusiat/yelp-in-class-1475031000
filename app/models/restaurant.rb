class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :tagtorestaurants,
             :dependent => :destroy

  has_one    :location

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
