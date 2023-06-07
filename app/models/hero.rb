class Hero < ApplicationRecord
  validates :name, presence: true

  scope :search, -> (term) { where('LOWER(name) LIKE ?', "%#{term.document}%") if term.present? }
  scope :sorted_by_name, -> { order(:name) }
end
