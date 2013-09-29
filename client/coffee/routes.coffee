Router.configure layout: 'layout'

Router.map ->
  # the dashboard url is just a workaround for the missing
  # implementation in the accounts-enty package.
  # once it is not necessary anymore, we can remove it
  # issue: https://github.com/BeDifferential/accounts-entry/pull/11
  @route 'dashboard', path: '/',
  onBeforeRun: ->
    @redirect('differentialSignUp') unless Meteor.user()
  @route 'home', path: '/',
  onBeforeRun: ->
    @redirect('differentialSignUp') unless Meteor.user()
  @route 'notFound', path: '*'