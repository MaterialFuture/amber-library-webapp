h1 = book.title
table.table
  tablebody
  tr
    td Title
    td = book.title
  tr
    td Author
    td = book.author
  tr
    td Edition
    td = book.edition
  tr
    td ISBN
    td = book.isbn
  tr
    td Read Status
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
    td Review
    td = book.review
  tr
    td Notes
    td = book.notes
  tr
    td User Submitted
    td 
      span @
      == book.user_id

br
p
  == link_to("Back", "/books", class: "btn btn-light btn-sm")
  == link_to("Edit", "/books/#{book.id}/edit", class: "btn btn-success btn-sm")
  == link_to("Delete", "/books/#{book.id}?_csrf=#{csrf_token}", "data-method": "delete", "data-confirm": "Are you sure?", class: "btn btn-danger btn-sm")
