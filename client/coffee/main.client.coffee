AccountsEntry.config =
  #logo: 'logo.png'
  #privacyUrl: '/privacy-policy'
  #termsUrl: '/terms-of-use'
  homeRoute: 'home'
  dashboardRoute: 'home'

Meteor.startup ->
  Accounts.ui.config
    passwordSignupFields: 'USERNAME_AND_EMAIL'
  
  Hooks.init()

Hooks.onLoggedIn = (userId) ->
  logger.info 'user logged in!'
  
Hooks.onLoggedOut = (userId) ->
  logger.info 'user logged out!'

logger.info "Client startup done"