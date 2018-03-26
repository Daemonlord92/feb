# Interval 2 do
#   puts "hey there"
# end
def repeat_message(n)
	loop do
		before = Time.now
		yield
		interval = n-(Time.now-before)
		sleep(interval) if interval > 0
	end
end
repeat_message(2) do
	puts "Hey there"
end