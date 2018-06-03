class Animal < ApplicationRecord
  has_many :images, through: :animal_images
  has_many :animal_images

  accepts_nested_attributes_for :images, allow_destroy: true
  accepts_nested_attributes_for :animal_images, allow_destroy: true

  validates :name, length: { minimum: 2 }
  validates :species, length: { minimum: 2 }
  validates :description, length: { maximum: 1200 }
  validates :age, numericality: { only_integer: true }

  enum category: [
    :cat,
    :dog,
    :rodent,
    :bird,
    :reptile
  ]
  
  enum gender: [
    :male,
    :female
  ]

  enum status: [
    :non_adopted,
    :adopted
  ]
end
