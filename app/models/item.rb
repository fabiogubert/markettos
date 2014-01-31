class Item < ActiveRecord::Base

  validates :barcode, :name, :description, :price, :location, presence: true

  validates :barcode, uniqueness: true

  validates :barcode, length: { is: 13 }

  def self.search(search)
    if search
      find(:all, :conditions => ['barcode LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end

end
