class Fibonacci
  def seq(start = 0, max = 35)
    numbers = [fib(start)]
    numbers += [seq(start + 1, max)] if start < max
    numbers.flatten
  end

  def seq_iterative(start = 0, max = 35)
    (start..max).to_a.inject([0,1]) do |fib_seq, n|
      fib_seq << fib_seq[-2] + fib_seq[-1]
      fib_seq
    end
  end

  private
  def fib(n)
    if n < 2
      return n
    else
      fib(n - 1) + fib(n - 2)
    end
  end
end
