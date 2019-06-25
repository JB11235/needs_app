class Item < ApplicationRecord

  belongs_to :category, optional: true
  belongs_to :collection, optional: true

  validates :name, presence: true

  scope :wanted, -> {where(owned: false)}
  scope :owned, -> {where(owned: true)}
  scope :single, -> {where(collection_id: nil)}

end
