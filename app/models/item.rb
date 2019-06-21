class Item < ApplicationRecord
  scope :wanted, -> {where(owned: false)}
  scope :owned, -> {where(owned: true)}
end
