class Transaction < ActiveRecord::Base
  PAYMENT_OPTIONS = ["Visa", "MasterCard", "American Express"]
end
