AccountsEntry.config =
  #logo: 'logo.png'
  #privacyUrl: '/privacy-policy'
  #termsUrl: '/terms-of-use'
  homeRoute: 'home'
  #dashboardRoute: 'dashboard'
  #profileRoute: 'profile'

Meteor.startup ->
  Accounts.ui.config(
    passwordSignupFields: 'USERNAME_AND_EMAIL'
  )

logger.info "Client startup done"