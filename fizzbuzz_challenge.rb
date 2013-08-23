#### Step 1
### Simple script

#### Step 2
### Simple method

#### Step 3
### Method returns to caller

#### Step 4
### Class with multiple methods

require 'json'

class FizzBuzz
  def initialize(upper)
    @upper = upper
  end

  def fizzbuzz
    (1..@upper).map do |n|
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
    fizzbuzz.join " "
  end

  def as_html
    html_start = "<html><body><ul>" 
    html_fb = fizzbuzz.map do |n|
      "<li>" + n.to_s + "</li>"
    end
    html_end = "</ul></body></html>"
    html_full = html_start + html_fb.join(' ') + html_end
  end

  def as_json
    JSON.generate(fizzbuzz)
  end
end

fb = FizzBuzz.new(15)

puts "TEXT:"
puts fb.as_text
puts "HTML:"
puts fb.as_html
puts "JSON:"
puts fb.as_json