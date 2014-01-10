$:.unshift File.dirname(__FILE__)

require 'bundler/setup'

require 'fileutils'

require 'lib/mit_application'

list = [
  MITApplication.new('isundaylee', 'Ljh123456@')
]

date_s = Time.now.strftime('%Y-%m-%d %H_%M_%S')
output = File.join(File.dirname(__FILE__), 'output')
date_output = File.join(output, date_s)
FileUtils.mkdir_p(date_output)

list.each do |school|
  puts "Processing #{school.filename}"
  out_file = File.join(date_output, "#{school.filename}.html")
  content = school.retrieve_html
  File.write(out_file, content)
  puts "Finished #{school.filename}"
end