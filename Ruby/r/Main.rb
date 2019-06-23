

MR_COUNT = 0

module Foo
MR_COUNT = 1
end

class Bar
MR_COUNT = 2

def practice
  puts MR_COUNT
# làm sao để truy xuất constant MR_COUNT của class Bar


# làm sao để truy xuất constant MR_COUNT của module Foo
# làm sao để truy xuất constant MR_COUNT của global environment
puts $MR_COUNT
end





end



a = Bar.new

a.practice