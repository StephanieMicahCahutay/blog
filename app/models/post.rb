class Post < ApplicationRecord
    validates :title, presence: true, length: { minimum: 5, maximum: 100 }
    validates :body, presence: true, length: { minimum: 10 }
    validates :author, presence: true
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
  