Handlebars.registerHelper "run", (name, params) ->
  _.reduce _.words(name, '.'), ((memo, item) ->
    if _.endsWith(item, '()')
      memo[_.trim(item, "()")]()
    else
      memo[item]
  ), window