class Search < ApplicationRecord
    self.inheritance_column = "not_sti"

    def search_articles
        articles = Article.all 

        articles = articles.where(['title LIKE ?',title]) if title.present?
        articles = articles.where(['body LIKE ?', body]) if body.present?
        return articles
    end 
end
