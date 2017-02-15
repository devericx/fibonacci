#!/Users/ericblobb/.rvm/rubies/ruby-2.4.0/bin/ruby

def gen_fib(x)
	nums = [1, 1]
	turns = x
	if turns < 3
		turns = 3
	end
	(2..(turns - 1)).each do |counter|
		nums.push(nums[counter - 2] + nums[counter - 1])
	end
	return nums
end

def print_array(array)
	array.each do |element|
		print "#{element} "
	end
	print "\n"
end

if ARGV.length < 1
	puts "Usage: #{$0} <# of terms to gen (min of 3)>"
	exit
end

arg = ARGV[0].to_i
array = gen_fib(arg)
print_array(array)
