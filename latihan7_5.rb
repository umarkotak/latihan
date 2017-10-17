# ini class deep counter
class DeepCounter
  def evaluate(arr)
    count = 0
    arr.each do |i|
      count += 1
      if i.class == Array
        count += evaluate(i) if i.empty? != true
      end
    end
    count
  end
end
