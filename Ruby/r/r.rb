- Tìm hiểu cách xây dựng class trong Ruby, viết thử 1 class thỏa đoạn code sau
xx = Person.new "tèo", "nguyễn", 18
xx.first_name thì console sẽ xuất ra tèo
xx.age thì console sẽ xuất ra 18
xx.full_name thì console sẽ xuất ra "tèo nguyễn"
Gợi ý: Sử dụng attr_accessor





class Person
  attr_accessor :first_name,:last_name,:age
  def initialize(first_name, last_name, age)
      @first_name = first_name
      @last_name = last_name
      @age = age
  end

  def full_name
    puts "#{@first_name} #{@last_name}"
  end
end


boy = Person.new "tèo","nguyễn","18"

puts boy.first_name
puts boy.age
puts boy.full_name




- Tìm hiểu các loại biến trong Ruby, cách khai báo, cách sử dụng, phạm vi sống của chúng ntn và chúng khác nhau ra sao, cho ví dụ:
Gợi ý: có 4 loại
Biến cục bộ (local variable)
Biến toàn cục (global variable)
Biến đối tượng (instance variable)
Biến lớp (class variable)


Biến cục bộ

Cú pháp: [a-z] or _ = <giá trị>

Phạm vi sử dụng giá trị của biến cục bộ phụ thuộc vào vị trí của biến khi khai báo.

vd:

local_variable = 'Toi nam ngoai method'

def variable_scope
  puts local_variable = 'Toi nam trong method'
end
variable_scope
puts local_variable #Toi nam ngoai method



Biến toàn cục

Cú pháp: $tên_biến = <giá trị>
Khác với biến cục bộ, biến toàn cục được khai báo với tên bắt đầu bằng ký tự $ và biến toàn cục có phạm vi sử dụng trong toàn bộ chương trình.


$global_variable = 'Toi chua duoc thay doi '

def variable_scope
  puts $global_variable = 'Toi da duoc thay doi '
end
variable_scope
puts $global_variable #'Toi chua duoc thay doi 'da





Biến đối tượng
Cú pháp: @tên_biến = <giá trị>
Biến được bắt đầu bằng ký tự @ được gọi là "Biến Đối Tượng", có nghĩa là nó chỉ thuộc về một đối tượng riêng lẻ hoặc một đối tượng của một lớp.


class Nguoi
  def initializa(ten)
    @ten = ten
  end

  def show
    puts @ten
  end

end
boy = Nguoi.new "Duy"
boy.show  #Duy


Biến lớp
Cú pháp: @@tên_biến = <giá trị>
Để định nghĩa biến thuộc class, chúng ta sử dụng ký tự @@ trước tên biến. Khác với biến đối tượng, biến lớp sẽ được dùng chung cho tất cả các đối tượng của lớp đó.

class Nguoi
  @@tongsonguoi = 0
  def initializa(ten)
    @ten = ten
  end

  def show
    puts @ten
    @@tongsonguoi+=1
    puts @@tongsonguoi
  end

end

boy = Nguoi.new "Duy"
boy.show  #Duy 1
girl = Nguoi.new "Maria"
girl.show  #Maria 2


 Tìm hiểu Ruby có kế thừa không, có override không, có overload không, cho ví dụ.


Có hỗ trợ  Kế thừa ví dụ

class Person
  attr_accessor :first_name,:last_name,:age
  def initialize(first_name, last_name, age)
      @first_name = first_name
      @last_name = last_name
      @age = age
  end

  def full_name
    puts "#{@first_name} #{@last_name}"
  end
end


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



Không hỗ trợ overload ví dụ


def method(a)
  puts "Method 1"
end

def method(a,b)
  puts "Method 2"
end

method(2) #Bị lỗi vì mehod gần nhất có 2 đầu vào, và không tìm method 1 đầu vào


Có hổ trợ override


class Cha
  def show
    puts "Lop cha"
  end

  def show_nd
    puts "Lop cha"
  end
end

class Con < Cha
  def show
    puts "Lop con"
  end
end

boy = Con.new

boy.show #lớp con
boy.show_nd #lớp cha



- Tìm hiểu vấn đề đa kế thừa trong Ruby và cách sử dụng module để giải quyết vấn đề, cho ví dụ.

Ruby không hỗ trợ đa kế thừa , cách khắc phục là dùng mix-in các module lại

ví dụ trên mạng :

module B
    include A
   def hello
       “Hello from B”
    end
end

module C
    include A
    def hello
         “Hello from C”
    end
end

class D
include B
include C
end
D.new.hello # => “Hello from C”   , lấy method lấy được gần nhất



Tìm hiểu các tầm vực trong Ruby và điểm khác nhau giữa chúng, cho ví dụ.
Gợi ý: private, protected, public. Cẩn thận với tầm vực protected, nó không giống các programming language khác đâu, đừng ngộ nhận.


public: có thể gọi từ bất cứ đâu

protected: gọi từ một đối tượng của lớp này hoặc một đối tượng là con của lớp này.

private:  gọi từ chính nó











