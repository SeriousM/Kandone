Router.configure layout: 'layout'

Router.map ->
  @route 'home', path: '/',
  @route 'board', path: '/board/:_id'
  @route 'notFound', path: '*'