# frozen_string_literal: true

# categories section

class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.integer :author_id
      t.string :name
      t.string :icon

      t.timestamps
    end
  end
end
