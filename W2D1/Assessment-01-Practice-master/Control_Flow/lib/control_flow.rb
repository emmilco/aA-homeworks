# EASY

# Return the argument with all its lowercase characters removed.
def destructive_uppercase(str)
  str.chars.select { |ch| ch == ch.upcase }.join
end

# Return the middle character of a string. Return the middle two characters if
# the word is of even length, e.g. middle_substring("middle") => "dd",
# middle_substring("mid") => "i"
def middle_substring(str)
  mid = str.length / 2
  if str.length.odd?
    str[mid]
  else
    str[mid,2]
  end
end

# Return the number of vowels in a string.
VOWELS = %w(a e i o u)
def num_vowels(str)
  str.scan(/[aeiou]/).length
end

# Return the factoral of the argument (num). A number's factorial is the product
# of all whole numbers between 1 and the number itself. Assume the argument will
# be > 0.
def factorial(num)
  (1..num).to_a.reduce { |acc,el| acc * el }
end


# MEDIUM

# Write your own version of the join method. separator = "" ensures that the
# default seperator is an empty string.
def my_join(arr, separator = "")
  arr.reduce { |acc,el| acc + separator + el }
end

# Write a method that converts its argument to weirdcase, where every odd
# character is lowercase and every even is uppercase, e.g.
# weirdcase("weirdcase") => "wEiRdCaSe"
def weirdcase(str)
  str.chars.map.with_index { |el,i| i.odd? ? el.upcase : el.downcase }.join
end

# Reverse all words of five more more letters in a string. Return the resulting
# string, e.g., reverse_five("Looks like my luck has reversed") => "skooL like
# my luck has desrever")
def reverse_five(str)
  words = str.split
  words.map { |word| word.length > 4 ? word.reverse : word }
end

# Return an array of integers from 1 to n (inclusive), except for each multiple
# of 3 replace the integer with "fizz", for each multiple of 5 replace the
# integer with "buzz", and for each multiple of both 3 and 5, replace the
# integer with "fizzbuzz".
def fizzbuzz(n)
  (1..n).map do |x|
    if x % 15 == 0
      "fizzbuzz"
    elsif x % 5 == 0
      "buzz"
    elsif x % 3 == 0
      "fizz"
    else
      x
    end
  end
end


# HARD

# Write a method that returns a new array containing all the elements of the
# original array in reverse order.
def my_reverse(arr)
  result = []
  arr.length.times { result << arr.pop }
  result
end

# Write a method that returns a boolean indicating whether the argument is
# prime.
def prime?(num)
  (2...num).none? { |x| num % x == 0 }
end

# Write a method that returns a sorted array of the factors of its argument.
def factors(num)
  (1..num).select { |x| num % x == 0 }
end

# Write a method that returns a sorted array of the prime factors of its argument.
def prime_factors(num)
  factors(num).select { |x| prime?(x) }
end

# Write a method that returns the number of prime factors of its argument.
def num_prime_factors(num)
  prime_factors(num).length
end


# EXPERT

# Return the one integer in an array that is even or odd while the rest are of
# opposite parity, e.g. oddball([1,2,3]) => 2, oddball([2,4,5,6] => 5)
def oddball(arr)
  arr.partition(&:even?).min_by(&:length)[0]
end
