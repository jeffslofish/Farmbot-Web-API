class Sequence
  include Mongoid::Document

  field :name
  validates :name, presence: true

  # allowable label colors for the frontend.
  COLORS = %w(blue green yellow orange purple pink gray red)
  field :color, type: String, default: -> { COLORS.sample }

end