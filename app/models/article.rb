class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :body, presence: true

  accepts_nested_attributes_for :comments,
    :allow_destroy => true
end
