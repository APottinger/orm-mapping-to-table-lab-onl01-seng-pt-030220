class Student
  
  def self.create_table
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS students (
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade TEXT
      )
      SQL
      DB[:conn].execute(sql)
  end 
  
  def self.drop_table
    DROP TABLE students
  end
  
  def save
    sql <<-SQL
      INSERT INTO students (name, album)
      VALUES (?, ?)
      SQL
      DB[:conn].execute(sql, self.name, self.album)
  end 
  
  def self.create(name, album)
    s = Student.new 
    s.save
    s 
  end 
  
  attr_accessor :name, :grade
  attr_reader :id
  
  def initialize(name, grade, id=nil)
    @name, @grade, @id = name, grade, id 
  end

end

