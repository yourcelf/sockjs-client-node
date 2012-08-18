sjsc = require("../index.js")
client = sjsc.create("http://localhost:3000/eventbus")
client.on "connection", ->
  console.log "connection",arguments
client.on "data", (msg) ->
  console.log "data",arguments
client.on "error", (e) ->
  console.log "error",arguments
client.write "Have some text you mighty SockJS server!"