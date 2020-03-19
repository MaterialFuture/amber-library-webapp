h1 Edit Profile

- if user.errors
  ul.errors
  - user.errors.each do |error|
    li = error.to_s

== form(action: "/profile", method: :patch) do
  == csrf_tag
  .form-group
    input.form-control required="true" type="email" name="email" placeholder="Email" value="#{user.email}"
  .form-group
    input.form-control required="true" type="username" name="username" placeholder="@username" value="#{user.username}"
  .form-group
    input.form-control required="true" type="password" name="password" placeholder="Your Current assword"
  == submit("Update", class: "btn btn-success btn-sm")
  == link_to("Profile", "/profile", class: "btn btn-light btn-sm")
