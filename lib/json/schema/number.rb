# frozen_string_literal: true

class JSON::Schema
  class Number < Leaf
    def to_h
      super.merge!({type: "number"})
    end
  end
end
