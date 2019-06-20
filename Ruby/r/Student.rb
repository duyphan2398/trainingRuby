require_relative 'Person'

class Student < Person
  attr_accessor :id_student

  def initialize(first_name, last_name, age,id_student)
    super(first_name,last_name,age)
    @id_student = id_student
  end




  def info_student
    puts "Ho va ten: #{@first_name} #{@last_name} - Tuoi: #{@age} - MSSV: #{@id_student}"
  end




end