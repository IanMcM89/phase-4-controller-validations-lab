class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, length: { minimum: 100 }
  validate :category_fiction_or_non_fiction

  private

  def category_fiction_or_non_fiction
    array = ['Fiction', 'Non-Fiction']
    if !array.include?(category)
      errors.add :category, "is not included in the list"
    end
  end
end
