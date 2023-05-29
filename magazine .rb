class Magazine
    attr_accessor :name , :category
    @@all=[]
    def initialize (name,category)
    @name=name #string
    @category=category #string
    @@all << self
    @articles=[]
    end
    def name
     @name
    end
    def category
     @category
    end
    def self.all
        @@all
    end
    def contributors
        Article.all.select { |article| article.magazine == self }.map(&:author)
    end
    def add_article(article)
        @articles << article
    end
    def article_titles
        @articles.map(&:title)
    end
    def contributing_authors
        authors = Hash.new(0)
        @articles.each do |article|
          authors[article.author] += 1
        end
        authors.keys.select { |author| authors[author] > 2 }
    end
    def self.find_by_name(name)
        all.find { |magazine| magazine.name == name }
    end
end