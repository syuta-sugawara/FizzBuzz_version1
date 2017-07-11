class Multier
  def split_three_and_five(count)
    return count if count % 3 == 0 && count % 5 == 0
  end

  def split_only_three(count)
    return count if count % 3 == 0 && count % 5 != 0
  end

  def split_only_five(count)
    return count if count % 5 == 0 && count % 3 != 0
  end
end

# 初期化
multier = Multier.new


1.step(100) do |count|
  puts case count
         when multier.split_three_and_five(count)
           "FizzBuzz"
         when multier.split_only_three(count)
           "Fizz"
         when multier.split_only_five(count)
           "Buzz"
         else
           count
       end
end