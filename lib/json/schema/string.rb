# frozen_string_literal: true

class JSON::Schema
  class String < Leaf
    ##
    # Constrain the string to a minimum length
    # @param [Integer] i The minimum length
    # @return [JSON::Schema::String] Returns self
    def min(i)
      tap { @minimum = i }
    end

    ##
    # Constrain the string to a maximum length
    # @param [Integer] i The maximum length
    # @return [JSON::Schema::String] Returns self
    def max(i)
      tap { @maximum = i }
    end

    def to_h
      super.merge!({
        type: "string",
        minLength: @minimum,
        maxLength: @maximum
      }).compact
    end
  end
end
