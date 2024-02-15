File.open("sample.txt", "r") do |file|
  line_number = 1

  while line_number <=3 && (line = file.gets)

    puts "#{line_number}: #{line.chomp}"

    line_number += 1
  end
end
