class Book < Granite::Base
  connection sqlite
  table books

  column id : Int64, primary: true
  column title : String?
  column author : String?
  column year : Int64?
  column isbn : Int64?
end
