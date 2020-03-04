- if book.errors
  ul.errors
    - book.errors.each do |error|
      li = error.to_s

== form(action: "/books/#{book.id.to_s}", method: book.id ? :patch : :post) do
  == csrf_tag
  .form-group
    == text_field(name: "title", value: book.title, placeholder: "Title", class: "form-control")
  .form-group
    == text_field(name: "author", value: book.author, placeholder: "Author", class: "form-control")
  .form-group
    == text_field(name: "year", value: book.year, placeholder: "Year", class: "form-control")
  .form-group
    == text_field(name: "isbn", value: book.isbn, placeholder: "Isbn", class: "form-control")
  == submit("Submit", class: "btn btn-success btn-sm")
  == link_to("Back", "/books", class: "btn btn-light btn-sm")
