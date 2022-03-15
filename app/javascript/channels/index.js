// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

const checks = document.querySelectorAll("#list li");
console.log(checks);

// checks.forEach do |check|
//   check.addEventListener("click", (event) => {
//   console.log(event);
//   console.log(event.currentTarget);
//   });
// end;

// checks.forEach((check) => {
//   console.log(item.innerText);
// });
