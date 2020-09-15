class GetFibonacci
  def initialize(limit)
    @limit = limit
    @f0 = 0
    @f1 = 1
  end

  def fibonacci(n)
    return   if n < 0
    return n if n < 2
    fibonacci(n - 1) + fibonacci(n - 2)
  end

  def start
    1.step do |i|
      result = self.fibonacci(i)
      @f0 = @f1
      @f1 = result

      if result >= @limit
        break
      end

      print (i == 1) ? "1" : ", #{result}"
    end
  end
end

puts "上限数を入力してください"
limit = gets.chomp.to_i

get_fibonacci = GetFibonacci.new(limit)
get_fibonacci.start