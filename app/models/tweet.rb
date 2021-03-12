class Tweet < ApplicationRecord
  validates :tweeet, presence: true, length: {maximum: 280}
end
