var Elm = require("./Main.elm").Elm;
window.elmApp = Elm.Main.init({ flags: new Date().getTime() });
  