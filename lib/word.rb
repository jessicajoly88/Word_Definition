class Word
  attr_reader(:word)
  @@words = []

  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
  end  

end
