class Product < ApplicationRecord
    belongs_to :our_store, optional: true
    
    validates :name, presence: true
    validates :expiration_date, presence: true
end
