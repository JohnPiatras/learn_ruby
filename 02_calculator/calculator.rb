def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def sum(array)
    array.reduce(0) { |sum, element| sum += element} 
end

def multiply(numbers)
    numbers.reduce(1) do |total, element| 
        total *= element
    end
end

def power(a, b)
    a**b
end

def factorial(a)
    if a > 1
        a * factorial(a - 1)
    else
        1
    end
end