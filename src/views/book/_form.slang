- if book.errors
  ul.errors
    - book.errors.each do |error|
      li = error.to_s

== form(action: "/books/#{book.id.to_s}", method: book.id ? :patch : :post) do
  == csrf_tag
  .form-group
    == label :title
    == text_field(name: "title", value: book.title, placeholder: "Title", class: "form-control")
  .form-group
    == label :author
    == text_field(name: "author", value: book.author, placeholder: "Author", class: "form-control")
  .form-group
    == label :read
    == select_field(name: "is_read", value: book.is_read, placeholder: "Has Read",collection: { 1 => "Not Completed", 2 => "Read", 3 => "Currently Reading", 4 => "Dropped" }, selected: 1, class: "form-control")
  .form-group
    == label :edition
    == text_field(name: "edition", value: book.edition, placeholder: "Edition", class: "form-control")
  .form-group
    == label :isbn
    == text_field(name: "isbn", value: book.isbn, placeholder: "Isbn", class: "form-control")
  .form-group
    == label :tags
    == text_field(name: "tags", value: book.tags, placeholder: "Tags, comma seperated", class: "form-control")
  .form-group
    == label :review
    == text_field(name: "review", value: book.review, placeholder: "Review...", class: "form-control")
  .form-group
    == label :notes
    == text_field(name: "notes", value: book.notes, placeholder: "Notes...", class: "form-control")
  br
  == submit("Submit", class: "btn btn-success btn-sm")
  == link_to("Back", "/books", class: "btn btn-light btn-sm")
