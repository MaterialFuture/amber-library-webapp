class Book < Granite::Base
  connection sqlite
  table books

  belongs_to :user

  column id : Int64, primary: true
  column title : String?
  column author : String?
  column edition : String?
  column isbn : String?
  column tags : String?
  column review : String?
  column notes : String?
  column is_read : Int32?
  column created_at : Time?
  column updated_at : Time?

end
