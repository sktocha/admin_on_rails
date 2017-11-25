module AdminOnRails
  class Fields
    include Enumerable

    def initialize
      @fields = []
    end

    def each(&block)
      @fields.each(&block)
    end

    def field(name, options = {})
      if @fields.any? { |field| field.name == name }
        raise "Field with name: #{name} already exists."
      else
        @fields << Field.new(name, options)
      end
    end
  end
end
