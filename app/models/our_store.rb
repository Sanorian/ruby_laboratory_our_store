class OurStore < ApplicationRecord
    has_many :workers, dependent: :nullify
    has_many :products, dependent: :nullify

    validates :name, presence: true
end
