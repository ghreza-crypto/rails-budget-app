class ExpenseCategory < ApplicationRecord
  belongs_to :expense
  belongs_to :category

  validates :expense_id, presence: true
  validates :category_id, presence: true
end
