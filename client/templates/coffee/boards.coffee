Template.my_boards.helpers
  boards: ->
    Boards.find {}

Template.my_board.events
  "click button.delete": ->
    if confirm "Really delete?"
      Boards.remove({_id: @._id})
  "click button.navigate": ->
    Router.go 'board', @

Template.new_board.events
  "click #create-board": ->
    event.preventDefault()
    Boards.insert({name: $("#new-board-name").val(), owner: Meteor.userId()})
    $("#new-board-name").val("")