h1
  span @
  == user.username
p
  == user.email
  == link_to("Edit", "/profile/edit", class: "btn btn-success btn-sm")
