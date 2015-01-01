class Banana < ActiveRecord::Base
  belongs_to :bowl
  validates :bowl_id, presence: true
  default_scope { where( bowl_id: Bowl.active ) }
end
