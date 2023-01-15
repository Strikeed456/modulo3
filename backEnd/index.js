/**
 * 1. instalamos express
 * 2. npm init y se config los param iniciales
 * 3. instalar nodmon global
 * 4. instalar dotenv
 * 5. crear scrip dev
 *
 */
const express = require("express");
const fs = require("fs");
const usuarioRouter = require("./usuario");
const app = express();

app.use(express.json());

app.use("/api", usuarioRouter);

app.listen(process.env.PORT, () => {
  console.log(`App runnign in port ${process.env.PORT}`);
});
