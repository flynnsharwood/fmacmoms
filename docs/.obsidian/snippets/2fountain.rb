require 'optparse'

def convert_to_fountain(input_file, output_file)
  fountain_content = []

  File.readlines(input_file).each do |line|
    line.strip!

    case line
    when /^# (.*)/ # Scene Heading / Shot
      fountain_content << "\n#{$1.upcase}\n"
    when /^## (.*)/ # Character Name
      fountain_content << "\n#{$1.upcase}\n"
    when /^### (.*)/ # Parenthetical
      fountain_content << "\t(#{$1})"
    when /^#### (.*)/ # Transition
      fountain_content << "\n> #{$1.upcase}\n"
    when /^##### (.*)/ # Act
      fountain_content << "\n**#{$1}**\n"
    when /^<mark>(.*)<\/mark>/ # Underline
      fountain_content << "_#{$1}_"
    when /^---$/ # Page Break
      fountain_content << "\n===\n"
    else # Dialogue or Action
      fountain_content << line
    end
  end

  File.write(output_file, fountain_content.join("\n"))
  puts "Conversion complete: #{output_file}"
end

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: convert_to_fountain.rb [options]"
  opts.on("-i", "--input FILE", "Input file") { |v| options[:input] = v }
  opts.on("-o", "--output FILE", "Output file") { |v| options[:output] = v }
end.parse!

if options[:input] && options[:output]
  convert_to_fountain(options[:input], options[:output])
else
  puts "Missing required arguments. Use -h for help."
end
