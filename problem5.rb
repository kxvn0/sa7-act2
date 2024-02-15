class InvalidAgeError < StandardError
  def initialize(message = "Age cannot be negative")
    super("InvalidAgeError: #{message}")
  end
end

def validate_age(age)
  if age > 0
    puts 'Age is valid'
  else
    raise InvalidAgeError
  end
rescue InvalidAgeError => e
  puts e.message
end

# Test with invalid age (negative)
validate_age(-5)

# Test with valid age (positive)
validate_age(30)
