class Author < ApplicationRecord
  has_many :articles, dependent: :destroy
  has_one :image
end
