module AdminOnRails
  class Field
    attr_reader :name, :title

    def initialize(name, options = {})
      @name = name
      @options = options
    end

    def render(resource)
      resource[@name]
    end

    def title(resource_class)
      resource_class.try(:human_attribute_name, @name) || @name
    end
  end
end
