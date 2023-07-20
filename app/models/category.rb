class Category < ApplicationRecord
    belongs_to :author, class_name: 'User'
    has_many :expense_categories, dependent: :destroy
    has_many :expenses, through: :expense_categories
  
    validates :name, presence: true, length: { minimum: 3, maximum: 25 }
    validates :icon, presence: true
    validates :author_id, presence: true
  end