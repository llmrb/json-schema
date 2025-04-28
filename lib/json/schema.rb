# frozen_string_literal: true

require "json"

class JSON::Schema
  require_relative "schema/leaf"
  require_relative "schema/object"
  require_relative "schema/string"
  require_relative "schema/number"
  require_relative "schema/boolean"

  def object(properties, **rest)
    Object.new(properties, **rest)
  end

  def string(...)
    String.new(...)
  end

  def number(...)
    Number.new(...)
  end

  def boolean(...)
    Boolean.new(...)
  end
end
