class Bowl < ActiveRecord::Base
  belongs_to :kitchen
  has_many :bananas

  validates :active, inclusion: { in: [false, true] }
  validates :kitchen_id, presence: true

  scope :active, -> {
    where(active: true).joins(:kitchen).merge( Kitchen.active )
  }
end
