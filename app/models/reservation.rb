class Reservation < ApplicationRecord
    belongs_to :kitchen
    belongs_to :cook
    has_many :kitchen_owner, through: :kitchens
end
