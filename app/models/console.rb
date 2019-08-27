class Console < ApplicationRecord
  validates :name, presence: :true
end
