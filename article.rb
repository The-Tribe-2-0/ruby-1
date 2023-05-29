class Article
    attr_reader :author , :magazine , :title
    @@all=[]
    def initialize(author,magazine,title)
     @author=author #object
     @magazine=magazine #object
     @title=title #string
     @@all << self
    end
    def title
      @title
    end
    def self.all
     @@all
    end
    def author
     @author
    end
    def magazine
    @magazine
    end
end