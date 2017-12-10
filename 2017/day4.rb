# ( ͡° ͜ʖ ͡°)
# OMG I completely misunderstood the question...
# it's asking about for the given list of **PASSPHRASES**
# how many are valid!! They are already passphrases

# def num_of_valid_passphrase(input)
#   length_uniq = input.uniq.length
#   result = (2..length_uniq - 1).reduce(0) do |sum, k|
#     cur_count = factorial(length_uniq) / factorial(length_uniq - k)
#     sum += cur_count
#   end
#   result + factorial(length_uniq)
# end

# def factorial(n)
#   (1..n).reduce(:*)
# end

# this is basically cheating, but ruby the language supports it :shrug:
def count_valid_passphrases(input)
  input.count { |words| words.length == words.uniq.length }
end

input = File.read('day4_input.txt').split(/\n/).map { |line| line.split(/\s/) }
puts count_valid_passphrases(input)
