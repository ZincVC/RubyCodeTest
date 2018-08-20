class Algo
  def initialize(data)
    @data = data
  end

  def remove_words_with_b
    @data.each_with_index.map { |x,i| x.downcase.include?('b') ? @data[i] = '----' : x }
  end

  def get_longest_string
    pokemon = @data.max_by(&:length)
    return {pokemon => pokemon.length}
  end

end
