ParameterType(
  name: 'email',
  regexp: /[A-Z][a-z]+/,
  transformer: ->(name) { Person.new(name) }
)

