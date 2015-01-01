class Kitchen < ActiveRecord::Base
  has_many :bowls
  validates :active, inclusion: { in: [false, true] }
  scope :active, -> { where(active: true) }
end
