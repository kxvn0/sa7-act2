text_file = 'input.txt'

if File.exist?(text_file)
  content = File.read(text_file)

  r_content = content.reverse

  File.open('output.txt', 'w') do |file|

    file.write(r_content)

  end

  puts 'File successfully reversed and written to suggested file.'
else
  puts 'Error: input.txt does not exist'
end
