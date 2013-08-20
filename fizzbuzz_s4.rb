#### STEP 4
require 'json'

class FizzBuzz
  def initialize(limit)
    @limit = limit
  end

  def fizzbuzz
    (1..@limit).map do |n|
      if n % 15 == 0
        "fizzbuzz"
      elsif n % 3 == 0
        "fizz"
      elsif n % 5 == 0
        "buzz"
      else
        n
      end
    end
  end

  def as_text
    fizzbuzz.join(" ")
  end

  def as_json
    fizzbuzz.to_json
  end

  def as_html
    "<p>" +
    as_text +
    "</p>"
  end

end

fb = FizzBuzz.new(15)

puts "TEXT: " + fb.as_text
puts "JSON: " + fb.as_json
puts "HTML: " + fb.as_html