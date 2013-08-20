#### STEP 1
# 15.times { |n| puts n }

#15.times do |n|
#  puts n
#end


#### STEP 2
# def fizzbuzz (limit)
#   (1..limit).map do |n|
#     if n % 15 == 0
#       "fizzbuzz"
#     elsif n % 3 == 0
#       "fizz"
#     elsif n % 5 == 0
#       "buzz"
#     else
#       n
#     end
#   end
# end
# puts fizzbuzz(15)

#### STEP 3
# class FizzBuzz
#   def initialize(limit)
#     @limit = limit
#   end

#   def fizzbuzz
#     (1..@limit).map do |n|
#       if n % 15 == 0
#         "fizzbuzz"
#       elsif n % 3 == 0
#         "fizz"
#       elsif n % 5 == 0
#         "buzz"
#       else
#         n
#       end
#     end
#   end
# end
# fb = FizzBuzz.new(15)
# puts fb.fizzbuzz


#### STEP 4
# class FizzBuzz
#   def initialize(limit)
#     @limit = limit
#   end

#   def fizzbuzz
#     (1..@limit).map do |n|
#       if n % 15 == 0
#         "fizzbuzz"
#       elsif n % 3 == 0
#         "fizz"
#       elsif n % 5 == 0
#         "buzz"
#       else
#         n
#       end
#     end
#   end

#   def as_text
#     fizzbuzz.join(" ")
#   end

#   def to_json
#     fizzbuzz    #what does JSon format look like?
#   end

#   def to_html
#     "<p>" +
#     as_text +
#     "</p>"
#   end

# end

# fb = FizzBuzz.new(15)

# puts fb.to_html