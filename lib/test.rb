class MyError < Exception
	def to_s
		"#{self.class.to_s}: hello makers"
	end
end

class ArgumentError < StandardError
	# def to_s
	# 	"personalized message here"
	# end
end

def say_hello
	begin
		raise MyError
	rescue MyError => e
		puts e.message
	end
	puts "hello"
end

# say_hello

def say_hello(name)
	raise 'blahhhh'
	puts "hello " + name
	puts 'something'
end

# begin
# 	say_hello "qwe"
# rescue ArgumentError => e
# 	puts e.message
# rescue RuntimeError => e
# 	puts e.message
# end

class AnotherError < Exception
	def initialize(message)
		super(message)
	end
end

def say_hi
	raise AnotherError.new("Custom error message")
end

# say_hi

begin
	say_hi
rescue AnotherError => e
	puts e.message
end



