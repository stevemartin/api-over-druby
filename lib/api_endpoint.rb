class ApiEndpoint

  # authors
  def author_class
    Author
  end

  def author( id )
    Author.find( id )
  end

  def author_json( id )
    Author.find( id ).to_json
  end

  def authors
    Author.all
  end

  def authors_json
    Author.all.to_json
  end

  def authors_hash
    JSON.parse( Author.all.to_json )
  end

  # books
  def book( id )
    Book.find( id )
  end

  def book_hash( id )
    Book.find( id ).attributes
  end


  def book_json( id )
    Book.find( id ).to_json
  end

  def books
    Book.all
  end

  def books_json
    Book.all.to_json
  end

  def books_hash
    JSON.parse( Book.all.to_json )
  end
end
