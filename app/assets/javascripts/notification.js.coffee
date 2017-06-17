App.room = App.cable.subscriptions.create "WebNotificationsChannel",
    received: (data) ->
      console.log(data)
      $('.hazard').addClass 'active'
