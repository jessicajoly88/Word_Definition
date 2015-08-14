class Word
  attr_reader(:word)
  @@words = []

  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
  end

  define_singleton_method(:all) do
    @@words
  end
end
