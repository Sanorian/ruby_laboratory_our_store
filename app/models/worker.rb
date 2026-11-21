class Worker < ApplicationRecord
    belongs_to :our_store, optional: true

    validates :name, presence: true
    validates :age, presence: true, numericality: { only_integer: true }
    validates :salary, presence: true, numericality: { greater_than_or_equal_to: 27093 }
end
