class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address , presence: true

  AVAILABLE_CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :category, presence: true, :inclusion=> { :in => AVAILABLE_CATEGORIES}

end
