.row
  .col-sm-11
    h2 Books
  .col-sm-1
    a.btn.btn-success.btn-sm href="/books/new" New
.table-responsive
  table.table.table-striped
    thead
      tr
        th Title
        th Author
        th Year
        th Isbn
        th Actions
    tbody
      - books.each do |book|
        tr
          td = book.title
          td = book.author
          td = book.year
          td = book.isbn
          td
            span
              == link_to("Show", "/books/#{book.id}", class: "btn btn-info btn-sm")
              == link_to("Edit", "/books/#{book.id}/edit", class: "btn btn-success btn-sm")
              == link_to("Delete", "/books/#{ book.id }?_csrf=#{csrf_token}", "data-method": "delete", "data-confirm": "Are you sure?", class: "btn btn-danger btn-sm")
