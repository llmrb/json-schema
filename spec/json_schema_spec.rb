# frozen_string_literal: true

require "setup"

RSpec.describe JSON::Schema do
  let(:schema) { JSON::Schema.new }

  describe "object" do
    context "when given a person object" do
      subject do
        JSON.parse JSON.dump(object)
      end

      let(:object) do
        schema.object(
          name: schema.string.required,
          age: schema.integer.min(18).max(65),
          toes: schema.integer.min(0).max(10).multiple_of(2),
        )
      end

      it "returns a schema" do
        is_expected.to eq({
          "type" => "object",
          "properties" => {
            "name" => {
              "type" => "string"
            },
            "age" => {
              "type" => "integer",
              "minimum" => 18,
              "maximum" => 65
            },
            "toes" => {
              "type" => "integer",
              "minimum" => 0,
              "maximum" => 10,
              "multipleOf" => 2
            }
          },
          "required" => ["name"]
        })
      end
    end
  end

  describe "array" do
    context "when given an array of string and null" do
      subject do
        JSON.parse(JSON.dump(array))
      end

      let(:array) do
        schema.array(schema.string, schema.null)
      end

      it "returns a schema" do
        is_expected.to eq({
          "type" => "array",
          "items" => [
            {"type" => "string"},
            {"type" => "null"}
          ]
        })
      end
    end
  end
end
