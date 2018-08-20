class StateSystem

  def initialize
  end

  def write_data(path, data)
    open(path, 'r') do |f|
      f.puts data
    end
  end

  def read_data(path)
    data = []
    begin
        file = File.new(path, "r")
        while (line = file.gets)
          data << line
        end
    rescue => err
        puts "Exception: #{err}"
        err
    end
    data
  end
end
