class Food < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :description, presence: true, allow_blank: true
    
    
    validates :price, presence: true, numericality: {greater_than: 0.01}, allow_blank: true
    def self.by_letter(letter)
        where("name LIKE ?", "#{letter}%").order(:name)
    end

    
    
end
