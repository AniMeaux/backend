class Animal < ApplicationRecord
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
