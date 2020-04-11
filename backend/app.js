const express = require("express");

this.api = express();

this.api.use("/", express.static("/srv/app/frontend/build"));

this.api.route("*").get((req, res) => {
  res.sendFile("/srv/app/frontend/build/index.html");
});

this.api.listen(80);
