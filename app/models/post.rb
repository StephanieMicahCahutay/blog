# app/models/post.rb
class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true, length: { minimum: 10 }
  validates :author, presence: true, length: { minimum: 2 }
  validates :published_at, presence: true
  validates :status, presence: true, inclusion: { in: %w[draft published] }

  # Custom validation for title uniqueness on create
  validate :title_must_be_unique, on: :create

  private

  def title_must_be_unique
    if Post.exists?(title: title)
      errors.add(:title, "must be unique. This title has already been taken.")
    end
  end
end
