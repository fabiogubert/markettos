class Item < ActiveRecord::Base

  validates :barcode, :name, :description, :price, :location, presence: true

  validates :barcode, uniqueness: true

  validates :barcode, length: { is: 13 }

end
