class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, presence: true
  validates :category, {
    presence: true,
    inclusion: { in: %w[Chinese Italian Japanese French Belgian] }
  }
end
