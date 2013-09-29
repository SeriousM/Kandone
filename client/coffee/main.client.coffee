AccountsEntry.config =
  #logo: 'logo.png'
  #privacyUrl: '/privacy-policy'
  #termsUrl: '/terms-of-use'
  homeRoute: 'home'
  dashboardRoute: 'home'
  #profileRoute: 'profile'

Meteor.startup ->
  Accounts.ui.config
    passwordSignupFields: 'USERNAME_AND_EMAIL'
  
  Hooks.init()

Hooks.onLoggedOut = (userId) ->
  logger.info 'user logged out!'
  Router.go 'boards'

logger.info "Client startup done"