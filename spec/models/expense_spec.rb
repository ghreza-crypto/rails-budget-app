require 'rails_helper'

RSpec.describe Expense, type: :model do
  before(:each) do
    @user = User.create(name: 'Nicolas', email: 'nicolas@gmail.com', password: 'password')
    @expense = Expense.new(name: 'Example expense', amount: 100, author_id: @user.id)
  end

  describe 'initialization' do
    it 'should be a expense object' do
      expect(@expense).to be_a Expense
    end

    it 'should have attributes' do
      expect(@expense).to have_attributes(name: 'Example expense', amount: 100, author_id: @user.id)
    end
  end

  describe 'validations' do
    before(:each) do
      expect(@expense).to be_valid
    end

    it 'should validate presence of name' do
      @expense.name = nil
      expect(@expense).not_to be_valid
    end

    it 'should validate length of name' do
      @expense.name = 'a'
      expect(@expense).not_to be_valid
      @expense.name = 'a' * 26
      expect(@expense).not_to be_valid
    end

    it 'should validate presence of amount' do
      @expense.amount = nil
      expect(@expense).not_to be_valid
    end

    it 'should validate numericality of amount' do
      @expense.amount = 'a'
      expect(@expense).not_to be_valid
      @expense.amount = -1
      expect(@expense).not_to be_valid
    end

    it 'should validate presence of author_id' do
      @expense.author_id = nil
      expect(@expense).not_to be_valid
    end
  end
end
