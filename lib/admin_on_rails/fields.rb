module AdminOnRails
  class Fields
    def initialize(view_key)
      @view_key = view_key
      @fields = {}
    end

    def field(name, options = {})
      if @fields[name].present?
        raise "Field with name: #{name} already exists. View name: #{@view_key}."
      else
        @fields[name] = options
      end
    end
  end
end
