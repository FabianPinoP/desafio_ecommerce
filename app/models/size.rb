class Size < ApplicationRecord
    has_many :variants
    has-many :products, through: :variants
end
