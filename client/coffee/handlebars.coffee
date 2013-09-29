Handlebars.registerHelper "run", (name, params) ->
  return "not implemented"
  _.reduce _.words(name, '.'), ((memo, item) ->
    result = memo[item]
    result = result() if item.endsWith '()'
    result
  ), window