## About

[llmrb/json-schema](https://github.com/llmrb/json-schema)
is a small, dependency-free library that can produce a
[JSON Schema](https://json-schema.org/overview/what-is-jsonschema)
through the composition of simple Ruby objects. It is an (optional
dependency) of
[llmrb/llm](https://github.com/llmrb/llm)
where it is used to describe the response a Large Language Model
(LLM) is expected to produce.

## Examples

### Object

The following example demonstrates how to produce a schema that
describes a theoretical object with three properties: `name`, `age`,
and `salary`. Some properties are required, others have a default, and
some have a range of values:

```ruby
#!/usr/bin/env ruby
require "json/schema"

schema = JSON::Schema.new
schema.object({
  name: schema.string.required,
  age: schema.number.default(18),
  salary: schema.number.min(65_000).max(120_000)
})
```

### Array

The following example demonstrates how to produce a schema that describes
an array of objects. It builds on the previous example by allowing an array
of objects with the same properties, and it also allows the array to include
"null" values:

```ruby
#!/usr/bin/env ruby
require "json/schema"

schema = JSON::Schema.new
schema.array(
  schema.object({
    name: schema.string.required,
    age: schema.number.default(18),
    salary: schema.number.min(65_000).max(120_000)
  }),
  schema.null
)
```

## API reference

The README tries to provide a high-level overview of the library. For everything
else there's the API reference. It covers classes and methods that the README glances
over or doesn't cover at all. The API reference is available at
[0x1eef.github.io/x/llmrb-json_schema](https://0x1eef.github.io/x/llmrb-json_schema).

## See also

* [JSON Schema: official website](https://json-schema.org/)
* [JSON Schema: interactive tour](https://tour.json-schema.org/)

## Install

[llmrb/json-schema](https://github.com/llmrb/json-schema) is available
via [RubyGems](https://rubygems.org/gems/json-schema)

	gem install llmrb-json_schema


## License
[BSD Zero Clause](https://choosealicense.com/licenses/0bsd/)
<br>
See [LICENSE](./LICENSE)
