require 'set'
class Author
 attr_reader :name
     def initialize(name)
      @name=name #string
      @articles=[]
     end
     def name
      @name
     end
    def articles
      Article.all.select{|article| article.author == self}
    end
    def magazines
     articles.map(&:magazine).uniq
    end
    def add_article(magazine, title)
        article = Article.new(self, magazine, title)
        @articles << article
        magazine.add_article(article)
     end
     def topic_areas
        categories = Set.new
        @articles.each do |article|
          categories.add(article.magazine.category)
        end
        categories.to_a
      end
end