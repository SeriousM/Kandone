Meteor.publish "boards", ->
  Boards.find owner: @.userId
  #Boards.find {}