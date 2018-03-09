class Student
  attr_accessor :name, :grade

  def initialize(id=nil,name, grade)
    @name = name
    @grade = grade
  end

  def self.create_table
    sql = <<-SQL
    CREATE IF NOT EXISTS students(
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade INTEGER  
    )
    SQL
  end
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

end
