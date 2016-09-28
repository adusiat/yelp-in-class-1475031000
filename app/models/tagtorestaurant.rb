class Tagtorestaurant < ApplicationRecord
  # Direct associations

  has_one    :tag,
             :foreign_key => "wordtag",
             :dependent => :destroy

  belongs_to :restaurant

  # Indirect associations

  # Validations

end
