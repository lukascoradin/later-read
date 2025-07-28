class SavedArticle < ApplicationRecord
  belongs_to :user

  validates :url, presence: true, uniqueness: { scope: :user_id }
  validates :title, presence: true
end
