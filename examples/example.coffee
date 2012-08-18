sjsc = require("./index.js")
client = sjsc.create("http://localhost:3000/eventbus")
client.on "connection", ->
  console.log arguments
client.on "data", (msg) ->
  console.log arguments
client.on "error", (e) ->
  console.log arguments
client.write "Have some text you mighty SockJS server!"