class Location <ActiveRecord::Base
  validates :name, presence: :true

  has_many :stops
  has_many :routes, through: :stops
end
