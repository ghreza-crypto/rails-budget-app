# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root to: 'categories#index', as: :authenticated_root
    end

    unauthenticated do
      root 'home#index'
    end
  end

  resources :categories do
    resources :expenses
  end
end
