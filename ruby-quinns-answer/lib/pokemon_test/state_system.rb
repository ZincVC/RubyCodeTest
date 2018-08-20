# There is no need for a class. These should be functions in the main body. No member data, no inheritance, no polymorism and no real abstraction here. 

# class StateSystem
#
#   def initialize
#   end
#
#   def write_data(path, data)
#     # Will overwrite any previous data due to `w`
#     open(path, 'r') do |f| # BUG 'w' not r
#       f.puts data
#     end
#   end

  # Read method no longer needed as it has been made redundant by passing in the data from memory rather than writing to and reading from

  # def read_data(path)
  #   data = []
  #   begin
  #       file = File.new(path, "r")
  #       while (line = file.gets)
  #         data << line
  #       end
  #       # removed this BUG file.close
  #   rescue => err
  #       puts "Exception: #{err}"
  #       err
  #   end
  #   data
  # end
# end
