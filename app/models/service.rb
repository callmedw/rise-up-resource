class Service < ApplicationRecord
  scope :monday, -> { where('days_of_the_week LIKE ?', '%Monday%')}
  scope :tuesday, -> { where('days_of_the_week LIKE ?', '%Tuesday%')}
  scope :wednesday, -> { where('days_of_the_week LIKE ?', '%Wednesday%')}
  scope :thursday, -> { where('days_of_the_week LIKE ?', '%Thursday%')}
  scope :friday, -> { where('days_of_the_week LIKE ?', '%Friday%')}
  scope :saturday, -> { where('days_of_the_week LIKE ?', '%Saturday%')}
  scope :sunday, -> { where('days_of_the_week LIKE ?', '%Sunday%')}
end
 