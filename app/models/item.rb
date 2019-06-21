class Item < ApplicationRecord

  belongs_to :category, optional: true

  validates :name, presence: true

  scope :wanted, -> {where(owned: false)}
  scope :owned, -> {where(owned: true)}

end
