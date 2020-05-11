class Student
  
  def self.create_table
    sql = <<- SQL
    CREATE TABLE IF NOT EXIST songs (
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade TEXT
      )
      SQL
      DB[:conn].execute(sql)
  end 
  
  attr_accessor :name, :grade
  attr_reader :id
  
  def initialize(name, grade, id=nil)
    @name, @grade, @id = name, grade, id 
  end

end

