class Definition
  attr_reader(:definition)
  @@definitions =[]

  define_method(:initialize) do |attributes|
    @definition = attributes.fetch(:definition)
    @id = @@definitions.length().+(1)
    @all_definitions = []
  end

  define_singleton_method(:all) do
    @@definitions
  end

  define_method(:save) do
    @@definitions.push(self)
  end

  define_singleton_method(:clear) do
    @@definitions = []
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |id|
    found_definition = nil
    @@definitions.each() do |definition|
      if definition.id().eql?(id.to_i())
        found_definition = definition
      end
    end
      found_definition
  end

  define_method(:all_definitions) do
    @all_definitions
  end

end
