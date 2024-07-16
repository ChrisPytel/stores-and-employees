class Store < ActiveRecord::Base

  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  validate :has_inventory_of_mens_or_womens_clothing

  def has_inventory_of_mens_or_womens_clothing
    unless mens_apparel || womens_apparel
      errors.add(:base, "Store must stock something from either mens's or women's clothing options")
    end
  end

end
