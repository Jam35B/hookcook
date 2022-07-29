class Cook < ApplicationRecord
    has_many :reservations
    has_many :kitchen, through: :reservations
end

