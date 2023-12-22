class Article < ApplicationRecord
  belongs_to :author
  default_scope -> { order(created_at: :desc) }
  validates :author_id, presence: true
  validates :title, presence: true
  validates :content, presence: true
end
