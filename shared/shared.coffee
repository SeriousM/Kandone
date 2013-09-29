@Utils = {}

@Utils.getUserName =->
  user = Meteor.user()
  
  return "not implemented yet"
  return "Not logged in" if not user
  
  if user.username
    user.username
  else if user.profile.name
    user.profile.name
  else if user.emails and user.emails[0]
    user.emails[0].address
  else
    "Logged In User"