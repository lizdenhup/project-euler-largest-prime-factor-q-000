# Enter your object-oriented solution here!
class LargestPrimeFactor 

  def initialize(number)
    @number = number
  end

def number
  max = 0
  (2..Math.sqrt(@number)).each do |j| 
    if @number % j == 0 && is_prime?(j) && j > max 
      max = j
    end 
  end 
  max 
end

def is_prime?(j)
  if (j == 2 || j == 3 || j % 6 == 1  || j % 6 == 5)
    (2...j).all? { |i| j % i != 0 }
  else
    false # ie not prime
  end 
end

end 