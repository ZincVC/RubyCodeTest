class StateSystem

  def initialize
  end

  def write_data(path, data)
    # Will overwrite any previous data due to `w`
    open(path, 'r') do |f| # BUG w not r
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
        # BUG removed file.close
    rescue => err
        puts "Exception: #{err}"
        err
    end
    data
  end
end
