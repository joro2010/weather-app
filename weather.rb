require 'weatherboy'

puts "Enter your zipcode for your local weather:"
location = gets

weatherboy = Weatherboy.new(location)
w = weatherboy.current

puts "It is currently #{w.temp_f} degrees and #{w.weather.downcase}."

f = weatherboy.forecasts
number = 0

while (number < 5)
	high = f[number].high_f
	low = f[number].low_f
	sky = f[number].conditions
	day = f[number].title
	puts "#{day}: #{sky} with a high of #{high} and a low of #{low}."
	number += 1
end