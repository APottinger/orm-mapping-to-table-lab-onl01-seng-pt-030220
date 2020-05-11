class Student
  
  def self.create_table
    sql = <<- SQL
    CREATE TABLE IF NOT EXIST songs (
      id INTEGER PRIMARY KEY
      
      )
  end 
  
  attr_accessor :name, :grade
  attr_reader :id
  
  def initialize(name, grade, id=nil)
    @name, @grade, @id = name, grade, id 
  end

end

