require "bookstore/version"

module Bookstore
  # Your code goes here...
	class Book
    attr_accessor :title, :author
	  def initialize(title, author)
			@title = title
			@author = author
		end
	end
	def self.new_book_option
		puts 'New Book'
		puts 'Title:'
		title = gets.chomp
		puts 'Author:'
		author = gets.chomp
		Book.new(title, author)
	end
	def self.print_books(books)
		books.each do |book|
			puts "#{book.title} #{book.author}"
		end
	end
	def self.break_line
    '______________________________'
	end
	def self.start
		books = []
		menu = true
		while menu
			puts "Menu: \n\t1. Create Book\n\t2. List Books\n\t3. Exit"
		  puts 'Option:'	
			option = gets.chomp.to_i
			if option == 1
				book = new_book_option
				books.push(book)
			elsif option == 2
				print_books books
			elsif option == 3
				menu = false
			end
			puts break_line
		end
	end
end
