class Article < ApplicationRecord
    has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  self.inheritance_column = "not_sti"

    def self.search(search)
        if search 
            where(["title LIKE ?","%#{search}%"])
        else
            all
        end
    end 
end
