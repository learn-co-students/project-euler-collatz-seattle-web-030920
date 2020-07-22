def even_next(n)
    n/2
end

def odd_next(n)
    3*n+1
end

def next_value(n)
    if n%2==0
        next_number=even_next(n)
    else 
        next_number=odd_next(n)
    end
    next_number
end

def collatz(n)
    array=[n]
    while n !=1
        n=next_value(n)
        array.push(n)
    end
    array
end

def longest_collatz
    longest_chain_length = 0
	number = 0
	(500000..1000000).each do |starting|
		current_length = collatz(starting).length
		if (current_length > longest_chain_length)
			longest_chain_length = current_length
			number = starting
		end
	end
	number
end