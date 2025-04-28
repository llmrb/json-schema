# frozen_string_literal: true

class JSON::Schema
  class Leaf
    def initialize(description: nil, default: nil, enum: nil, required: false)
      @description = description
      @default = default
      @required = required
      @enum = enum
    end

    def to_h
      {description:, default:, enum:}.compact
    end

    def to_json(options = {})
      to_h.to_json(options)
    end

    def required?
      @required
    end

    private

    attr_reader :description
    attr_reader :default
    attr_reader :required
  end
end
