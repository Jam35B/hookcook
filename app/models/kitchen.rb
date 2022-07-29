class Kitchen < ApplicationRecord
    has_many :reservations
    has_many :cook, through: :reservations
end
