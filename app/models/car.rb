class Car < ApplicationRecord
  # Associations
  belongs_to :user
  # Validations
  validates_presence_of :make, :model, :color, :year, :mileage
  # Callbacks
  # Instance Methods
  # Example: Car.find(1).info
  def info
    "The Car with Make: #{make} - #{model} has the color of #{color}"
  end

  # Class Methods
  # Example: @cars = Car.all.by_year
  def self.by_year
    # order(year: :desc)
    order(:year)
  end
end
