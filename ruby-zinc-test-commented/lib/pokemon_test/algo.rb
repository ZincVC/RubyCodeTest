class Algo
  def initialize(data)
    @data = data
  end

    def remove_words_with_b
      @data.each_with_index do |word, ind|
        word.length.times do |index|
          if word[index].downcase == 'b'
            @data[ind] = "-------"
          end
        end
      end
      puts @data # BUG shouldn't put. Just return @data
    end

private # BUG This won't run. Must be public

  def get_longest_string
    current_longest = {@data[0] => @data[0].length}
    longest_value = @data[0] # BUG should read @data[0].length
    @data.each do |word|
      if word.length > longest_value
        current_longest = {word => word.length}
        longest_value = word.length
      end
    end
    current_longest
  end
end
