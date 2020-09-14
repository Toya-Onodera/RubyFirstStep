(1..100).each do |i|
  if i % 15 == 0
    print("FizzBuzz")
  elsif i % 3 == 0 then
    print("Fizz")
  elsif i % 5 == 0 then
    print("Buzz")
  else
    print("#{i}")
  end

  print("\n")
end
