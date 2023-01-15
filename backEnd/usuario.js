const express = require("express");
const cliente = require("./pg");
const usuarioRouter = express.Router();

const getUsuario = (_request, response) => {
  cliente.query("select * from modulo3.tusuario;", (error, results) => {
    if (error) {
      throw error;
    }
    response.status(200).json({
      status: "sucess",
      requestTime: _request.requesTime,
      data: results.rows,
    });
  });
};

const postUsuario = (req, res) => {
  const { nombre_usuario, edad, email } = req.body;
  cliente.query(
    "insert into modulo3.tusuario (nombre_usuario, edad, email) values ($1, $2, $3);",
    [nombre_usuario, edad, email],
    (error, results) => {
      if (error) {
        throw error;
      }
      res.status(201).send("se inserto el usuario");
    }
  );
};

const statusUsuario = (req, res) => {
  res.status(200).json({
    nameSystem: "Proyecto final",
    version: "0.0.1",
    developer: "Roberto Carlos Pinto Andia",
    email: "strikeed456@gmail.com",
  });
};

const promedioEdadUsuario = (req, res) => {
  cliente.query(
    "select edad, nombre_usuario from modulo3.tusuario;",
    (error, results) => {
      if (error) {
        throw error;
      }

      let sumatoria = 0;
      results.rows.forEach((element) => {
        sumatoria = element.edad + sumatoria;

        //  console.log("sumatoria:", sumatoria);
      });

      let promedio = sumatoria / results.rows.length;
      //  console.log("promedio", promedio);

      res.status(200).json(promedio);
    }
  );
};
usuarioRouter.route("/getUsuario").get(getUsuario);
usuarioRouter.route("/postUsuario").post(postUsuario);
usuarioRouter.route("/statusUsuario").get(statusUsuario);
usuarioRouter.route("/promedioEdadUsuario").get(promedioEdadUsuario);
module.exports = usuarioRouter;
