# Enter your procedural solution here!
def largest_prime_factor(limit)
  max = 0
  (2..Math.sqrt(limit)).each do |j| 
    if limit % j == 0 && is_prime?(j) && j > max 
      max = j
    end 
  end 
  max 
end

def is_prime?(limit)
  if (limit == 2 || limit == 3 || limit % 6 == 1  || limit % 6 == 5)
    (2...limit).all? { |i| limit % i != 0 }
  else
    false # ie not prime
  end 
end
