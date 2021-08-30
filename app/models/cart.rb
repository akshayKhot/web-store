class Cart < ApplicationRecord
  # If you delete a cart, destroy all line items that belong to a cart
  has_many :line_items, dependent: :destroy
end
