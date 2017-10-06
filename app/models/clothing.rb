class Clothing < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  scope :boys, -> { where('gender LIKE ?', '%Boys%')}
  scope :girls, -> { where('gender LIKE ?', '%Girls%')}
  scope :men, -> { where('gender LIKE ?', '%Men%')}
  scope :women, -> { where('gender LIKE ?', '%Women%')}
  scope :newborn, -> { where('gender LIKE ?', '%Newborn%')}
  scope :any, -> { where('gender LIKE ?', '%Any%')}
end
