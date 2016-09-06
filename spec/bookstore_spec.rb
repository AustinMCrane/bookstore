require 'spec_helper'

describe Bookstore do
  it 'has a version number' do
    expect(Bookstore::VERSION).not_to be nil
  end

  it 'does something useful' do
    book = Bookstore::Book.new('title', 'author')
    expect(book.title).to eq('title')
  end
  it 'should make a book with a title' do
    book = Bookstore::Book.new('title', 'author') 
    expect(book.title).not_to be_nil
    expect(book.title).to eq('title') 
  end
end
