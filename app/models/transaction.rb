class Transaction < ActiveRecord::Base
  PAYMENT_OPTIONS = ["Visa", "MasterCard", "American Express"]

  scope :recent, lambda { |n| order("date DESC").limit(n) }
end
