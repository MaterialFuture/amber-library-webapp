h1 Details
table
  tablebody
  tr
    td = book.title
  tr
    td = book.title
  tr
    td = book.author
  tr
    td = book.edition
  tr
    td = book.isbn
  tr
    td
       - if book.is_read == 1
         | Not Completed
       - elsif book.is_read == 2
         | Read
       - elsif book.is_read == 3
         | Currently Reading
       - elsif book.is_read == 4
         | Dropped
       - else
         | err
  tr
    td = book.review
  tr
    td = book.notes

p
  == link_to("Back", "/books", class: "btn btn-light btn-sm")
  == link_to("Edit", "/books/#{book.id}/edit", class: "btn btn-success btn-sm")
  == link_to("Delete", "/books/#{book.id}?_csrf=#{csrf_token}", "data-method": "delete", "data-confirm": "Are you sure?", class: "btn btn-danger btn-sm")
