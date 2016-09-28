class Tag < ApplicationRecord
  # Direct associations

  belongs_to :wordtag,
             :class_name => "Tagtorestaurant"

  belongs_to :user

  # Indirect associations

  # Validations

end
