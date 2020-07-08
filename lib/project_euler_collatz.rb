def even_next(n)
  n/2
end

def odd_next(n)
  3 * n + 1
end

def next_value(n)
  if n % 2 == 0 
    new_n = even_next(n) 
  else 
    new_n = odd_next(n)
  end
  new_n
end

def collatz(n)
  array = [n]
  until array.last == 1 
    n = next_value(n)
    array << n 
  end
  array
end

def longest_collatz
  max_sequence = [1, 1]
  (1..1000000).each do |n| 
    l = collatz(n).length
    if l > max_sequence[1] 
      max_sequence[0] = n 
      max_sequence[1] = l 
    end
  end
end