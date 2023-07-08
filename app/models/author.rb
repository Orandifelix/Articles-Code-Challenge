require_relative './article'

class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def articles
    # Article instances the author has written
    Article.all.filter do |article|
      article.author == self
    end
  end

  def magazines
    magazines = self.articles.map do |article|
      article.magazine
    end
    # Magazine instances for which the author has contributed to
    magazines.uniq
  end

  def add_article(magazine, title)
    # A new Article instance and associates it with that author and that magazine
    Article.new(self, magazine, title)
  end

  def topic_areas
    # Array of strings with the categories of the magazines the author contributed to
    self.magazines.map do |magazine|
      magazine.category
    end
  end
end


