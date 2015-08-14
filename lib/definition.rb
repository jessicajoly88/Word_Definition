class Definition
  attr_reader(:definition)
  @@list_definitions =[]


  define_method(:initialize) do |attributes|
    @definition = attributes.fetch(:definition)
    @id = @@list_definitions.length().+(1)
    @all_definitions = []
    @definitions = []
  end

  define_singleton_method(:all) do
    @@list_definitions
  end

  define_method(:save) do
    @@list_definitions.push(self)
  end

  define_singleton_method(:clear) do
    @@list_definitions = []
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |id|
    found_definition = nil
    @@list_definitions.each() do |definition|
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
