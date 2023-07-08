require_relative '../config/environment.rb'
require_relative './article'

def reload
  load 'config/environment.rb'
end

### WRITE YOUR TEST CODE HERE ###

# Create sample authors
author1 = Author.new('John Doe')
author2 = Author.new('Jane Smith')

# Create sample magazines
magazine1 = Magazine.new('Tech Magazine', 'Technology')
magazine2 = Magazine.new('Fashion Weekly', 'Fashion')

# Create sample articles
article1 = Article.new(author1, magazine1, 'Hello World')
article2 = Article.new(author2, magazine1, 'Tech Trends')
article3 = Article.new(author2, magazine2, 'Fashion Tips')

# Test Article class
puts "Article Title: #{article1.title}"
puts "Article Author: #{article1.author.name}"
puts "Article Magazine: #{article1.magazine.name} (#{article1.magazine.category})"

# Test Author class
puts "Author Name: #{author1.name}"
puts "Author Articles: #{author1.articles.inspect}"
puts "Author Magazines: #{author1.magazines.inspect}"
author1.add_article(magazine2, 'Fashion Tech')
puts "Author Articles after adding new article: #{author1.articles.inspect}"
puts "Author Magazines after adding new article: #{author1.magazines.inspect}"
puts "Author Topic Areas: #{author1.topic_areas.inspect}"

# Test Magazine class
puts "Magazine Name: #{magazine1.name}"
puts "Magazine Category: #{magazine1.category}"
puts "Magazine Contributors: #{magazine1.contributors.inspect}"
puts "Magazine Find by Name: #{Magazine.find_by_name('Tech Magazine').inspect}"
puts "Magazine Article Titles: #{magazine1.article_titles.inspect}"
puts "Magazine Contributing Authors: #{magazine1.contributing_authors.inspect}"

### DO NOT REMOVE THIS
binding.pry


