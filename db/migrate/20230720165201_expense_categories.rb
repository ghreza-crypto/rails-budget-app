# frozen_string_literal: true

# expense categories section

class ExpenseCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :expense_categories do |t|
      t.integer :expense_id
      t.integer :category_id

      t.timestamps
    end

    add_foreign_key :expense_categories, :expenses, column: :expense_id
    add_foreign_key :expense_categories, :categories, column: :category_id

    add_index :expense_categories, :expense_id
    add_index :expense_categories, :category_id
  end
end
