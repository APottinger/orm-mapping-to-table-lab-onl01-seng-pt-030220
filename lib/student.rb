class Student
  
  self.create_table
    CREATE TABLE (
      )
  end 
  
  attr_accessor :name, :grade
  attr_reader :id
  
  def initialize(name, grade, id=nil)
    @name, @grade, @id = name, grade, id 
  end

end

